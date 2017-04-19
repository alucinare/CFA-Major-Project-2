class AddTopicToConnect < ActiveRecord::Migration[5.0]
  def change
    add_column :connects, :topic, :text
  end
end
