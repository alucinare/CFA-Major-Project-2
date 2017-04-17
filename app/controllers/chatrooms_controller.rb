class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :edit, :update]

  def index
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
  end

  def new
    @enguage = Enguage.new
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
    @enguage = Enguage.new
    @enguage.discussion = params[:discussion]
    @enguage.article = params[:article]
    @enguage.user_id = current_user.id
    @enguage.chatroom_id = @chatroom.id


    if @enguage.save
      respond_to do |format|
        format.html { redirect_to chatroom_path(@chatroom) }
        format.js
      end
    else
      respond_to do |format|
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
