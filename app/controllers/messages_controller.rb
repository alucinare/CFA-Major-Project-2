class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    # message.chatroom_id = params[:chatroom_id]
    # message.content = params[:content]
    message.user = current_user
    puts message.inspect
    # puts connect.inspect

    connect = params[:connect]
    puts "////////////////////"
    puts connect.inspect
    puts "///////////////////"
    puts current_user.connects[0].inspect
    @connect = Connect.where("chatroom_id = ? AND user_id = ?", message.chatroom_id, current_user)

    # connect = current_user.connects[0]
    # connect = current_user.connects[0].article
    if message.save #&& current_user.username == "TestNotSee" - this will hide the message before it's sent through the action cable, but it will show if the page is reloaded.
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username,
        connect: @connect[0].article
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end
