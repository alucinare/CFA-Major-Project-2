class AddChatroomIdToConnects < ActiveRecord::Migration[5.0]
  def change
    add_reference :connects, :chatroom, foreign_key: true
  end
end
