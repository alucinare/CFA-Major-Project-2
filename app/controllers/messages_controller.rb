class MessagesController < ApplicationController
  skip_after_action :verify_authorized

  def create
    message = Message.new(message_params)
    message.user = current_user

    @connect = Connect.where("chatroom_id = ? AND user_id = ?", message.chatroom_id, current_user)

    if message.save
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
