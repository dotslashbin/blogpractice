class Article < ActiveRecord::Base
  attr_accessible :author, :body, :keywords, :published_at, :title, :category_ids

  belongs_to :user
  has_many :comments

  has_and_belongs_to_many :categories

  def long_title
    '#{title} - #{published_at}'
  end

  #def before_create
  #  puts "this is what happens before save"
  #end
  #
  #def after_create
  #  puts "A new article has been saved"
  #end

end
