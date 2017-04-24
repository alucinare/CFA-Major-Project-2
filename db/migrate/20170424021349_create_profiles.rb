class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :bio
      t.string :avatar
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
