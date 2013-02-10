class CommmentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts "this is done by the observer method"
  end
end
