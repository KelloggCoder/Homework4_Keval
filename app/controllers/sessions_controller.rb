class SessionsController < ApplicationController
  def new
  end

  def create
   @user = User.find_by({ "email" => params["email"] })
      if @user
        if BCrypt::Password.new(@user["password"]) == params["password"]
          # cookie goes here
          session["user_id"] = @user["id"]
          #UX feedback to user
          flash["notice"] = "You've logged in."
          # login the user
          redirect_to "/"
        else
          flash["notice"] = "Incorrect Password."
          redirect_to "/sessions/new"
        end
      else
      flash["notice"] = "Incorrect Email."
      redirect_to "/sessions/new"
      end
  end

  def destroy
    flash["notice"] = "Goodbye."
    #session["user_id"] = nil
    redirect_to "/sessions/new"
  end
end
  