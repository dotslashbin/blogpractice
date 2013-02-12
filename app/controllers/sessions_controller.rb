class SessionsController < ApplicationController
  def create
    if user = User.authenticate( params[ :email], params[ :password ] )
      session[ :user_id ] = user.id
      redirect_to root_path, :notice =>"logged in successfully"
    else
      flash.now[ :alert ] = "Invalid login"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "naka logout na ka"
  end
end
