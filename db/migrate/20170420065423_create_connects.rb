class CreateConnects < ActiveRecord::Migration[5.0]
  def change
    create_table :connects do |t|
      t.string :article
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
