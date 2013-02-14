class CreateArticlesCategories < ActiveRecord::Migration
  def up
    create_table :articles_categories, :id => false do |table|
      table.references :article
      table.references :category
    end
  end

  def down
    drop_table :artilces_categories
  end
end
