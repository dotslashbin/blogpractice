class UsersController < ApplicationController
  before_filter :authenticate, :except => [ :edit, :update ]

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

  def edit
    @user = current_user
  end

  def update
    if @user.update_attributes( params[ :user ] )
      redirect_to articles_path, :notice => "Updated user information successfully"
    else
      render :action => "edit"
    end
  end

end
