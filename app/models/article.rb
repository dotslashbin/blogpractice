class Article < ActiveRecord::Base
  attr_accessible :author, :body, :keywords, :published_at, :title
end
