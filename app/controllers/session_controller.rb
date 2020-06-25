class SessionsController < ApplicationController
  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      # do sth here
    else
      redirect_to home_url
    end
  end
end
