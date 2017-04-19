class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :edit, :update]

  def index
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
  end

  def new
    @connect = Connect.new
    if request.referrer.split("/").last == "chatrooms"
      flash[:notice] = nil
    end
    @chatroom = Chatroom.new
  end

  def edit
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.save
    @connect = Connect.new
    @connect.article = params[:article]
    @connect.discussion = params[:discussion]
    @connect.user_id = current_user.id
    @connect.chatroom_id = @chatroom.id

    puts @connect.inspect

    # puts current_user.connects[0].chatroom_id.inspect
    puts current_user.connects[0].inspect
    puts current_user.connects.inspect
    puts current_user.inspect
    #chatroom_id = 37 #Chatroom.find(params[:id])


    if @connect.save
      respond_to do |format|
        format.html { redirect_to chatroom_path(@chatroom) }
        format.js
      end
    else
      respond_to do |format|
        if current_user.connects[0].chatroom_id == 37
          redirect_to chatroom_path(chatroom_id.id)
        end
        flash[:notice] = {error: ["a chatroom with this topic already exists"]}
        format.html { redirect_to new_chatroom_path }
        format.js { render template: 'chatrooms/chatroom_error.js.erb'}
      end
    end
  end

  def update
    chatroom.update(chatroom_params)
    redirect_to chatroom
  end

  def show
    @message = Message.new
  end

  private

    def set_chatroom
      @chatroom = Chatroom.find_by(slug: params[:slug])
    end

    def chatroom_params
      params.require(:chatroom).permit(:topic)
    end
end
