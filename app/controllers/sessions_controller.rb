class SessionsController < ApplicationController
  def new
  end

  def create
  @user = User.find_by({ "email" => params["email"] })
    if @user
    # check secret password
    else
    redirect_to "/sessions/new"
  end
  end

  def destroy
    flash["notice"] = "Goodbye."
    #session["user_id"] = nil
    redirect_to "/sessions/new"
  end
end
  