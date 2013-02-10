class CommentsController < ApplicationController
  before_filter :load_article

  def crate
    @comment = @article.comments.new( params[ :comment ] )

    if @comment.save
      redirect_to @article, :notice => "Salamat sa comment"
    else
      redirect_to @article, :notice => "Wa man ma add ang comment"
    end
  end

end
