class UsersController < ApplicationController

  def index
    respond_to do |format|
      format.html  # index.html.erb
      format.json { render json: @articles }
    end
  end

  def new
    @user = User.new
  end

  #def create
  #  @user = User.new( params[ :user ] );
  #
  #  if @user.save
  #    redirect_to articles_path, :notice => "User successfully added"
  #  else
  #    render :action => 'new'
  #  end
  #end

  #def update
  #  @user = User.find( params[:id] )
  #end
  #
  #if @user.update_attributes( params[ :user ] )
  #  redirect_to articles_path, :notice => "User updated"
  #else
  #    render :action => 'edit'
  #end

end
