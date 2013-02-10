class UsersController < ApplicationController

  def index

    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def new

    @user = User.new

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def create
    @user = User.new( params[ :user ] );

    if @user.save
      redirect_to articles_path, :notice => "User successfully added"
    else
      render :action => 'new'
    end
  end

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
