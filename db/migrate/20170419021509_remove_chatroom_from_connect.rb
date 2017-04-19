class RemoveChatroomFromConnect < ActiveRecord::Migration[5.0]
  def change
    remove_reference :connects, :chatroom, foreign_key: true
  end
end
