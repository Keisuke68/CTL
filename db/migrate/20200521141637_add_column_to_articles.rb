class AddColumnToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :description, :text
    add_column :articles, :user_id, :integer
  end
end
