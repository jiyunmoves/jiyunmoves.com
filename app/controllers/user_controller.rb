class UserController < ApplicationController
  def login
    user=User.where(username: params[:username])[0]
    if user.nil?
      flash[:alert]="None authorized user"
      redirect_to :back
    elsif user.password!=params[:password]
      flash[:alert]="Wrong password"
      redirect_to :back
    else
      session[:user_id]=user.id
      flash[:alert]="Successfully loged in"
      redirect_to :back
    end
  end

  def logout
    reset_session
    flash[:alert]="Successfully log-out"
    redirect_to :back
  end
end
