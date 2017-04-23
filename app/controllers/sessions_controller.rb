class SessionsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    admin_params = params.require(:admin).permit(:username, :password)
    @admin = Admin.confirm(admin_params)
    if @admin
      login(@admin)
      flash[:success] = "Successfully logged in."
      redirect_to root_path
    else
      flash[:error] = "Incorrect email or password."
      redirect_to login_path
    end
  end

  def destroy
    logout
  end

end
