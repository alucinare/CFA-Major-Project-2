class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    connect = current_user.connects[0].article
    if message.save #&& current_user.username == "TestNotSee" - this will hide the message before it's sent through the action cable, but it will show if the page is reloaded.
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username,
        connect: connect
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end
