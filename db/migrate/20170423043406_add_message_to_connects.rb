class AddMessageToConnects < ActiveRecord::Migration[5.0]
  def change
    add_reference :connects, :message, foreign_key: true
  end
end
