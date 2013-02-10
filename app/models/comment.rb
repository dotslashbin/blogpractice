class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :name

  belongs_to :article
end
