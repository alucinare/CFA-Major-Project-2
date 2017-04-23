class AddArticleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :article, :string
  end
end
