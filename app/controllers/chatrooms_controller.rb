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
    @chatroom = Chatroom.new#(chatroom_params)
    @chatroom.topic = params[:topic] # I don't really need this anymore because I put a form in the new view instead of the buttons. Turns out I do need this because 2 submit buttons will not work for an agree and disagree value.
    if_saved = @chatroom.save

    chatroom_obj = Chatroom.where(:topic => params[:topic])

    @connect = Connect.new
    @connect.article = params[:article]
    @connect.user_id = current_user.id
    @connect.chatroom_id = chatroom_obj[0].id
    @connect.save

    topic = params[:topic]

    if if_saved
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js
      end
    elsif @chatroom.topic == topic #@connect.save && @connect.topic == chatroom_obj[0].topic
      respond_to do |format|
        format.html { redirect_to chatroom_path(chatroom_obj[0].slug) }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = {error: ["To better Engauge you, please select from the options below and enter article link."]}
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

    @connect = Connect.find_by(params[:chatroom_id])
    puts @connect.inspect
    @user = current_user
  end

  private

    def set_chatroom
      @chatroom = Chatroom.find_by(slug: params[:slug])
    end

    def chatroom_params
      params.require(:chatroom).permit(:topic)
    end
end
