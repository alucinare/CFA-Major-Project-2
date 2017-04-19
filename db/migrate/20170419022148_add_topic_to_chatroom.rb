class AddTopicToChatroom < ActiveRecord::Migration[5.0]
  def change
    add_column :chatrooms, :topic, :text
  end
end
