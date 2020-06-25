class UsersController < ApplicationController
  def create
    @user          = User.new
    @user.email    = params[:user]
    @user.password = params[:password]
    if @user.save
      flash[:success] = ''
    else
      flash[:error] = ''
    end

    redirect_to home_url
  end
end
