class CreateConnects < ActiveRecord::Migration[5.0]
  def change
    create_table :connects do |t|
      t.references :user, foreign_key: true
      t.references :chatroom, foreign_key: true
      t.boolean :article
      t.boolean :discussion

      t.timestamps
    end
  end
end
