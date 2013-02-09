class AddFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
    add_column :articles, :keywords, :string
  end
end
