class ChatroomsController < ApplicationController


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
    @chatroom = Chatroom.find_by(slug: params[:slug])
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @enguage = Enguage.new
    puts @enguage.inspect
    @enguage.discussion = params[:discussion]
    puts @enguage.inspect
    @enguage.article = params[:article]
    puts @enguage.inspect
    puts @chatroom.topic
    @enguage.user_id = 1
    @enguage.chatroom_id = 15
    puts @enguage.inspect
    @enguage.save(validate: false)

    if @chatroom.save && @enguage.save
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
    chatroom = Chatroom.find_by(slug: params[:slug])
    chatroom.update(chatroom_params)
    redirect_to chatroom
  end

  def show
    @chatroom = Chatroom.find_by(slug: params[:slug])
    @message = Message.new
  end

  private

    def chatroom_params
      params.require(:chatroom).permit(:topic)
    end
end
