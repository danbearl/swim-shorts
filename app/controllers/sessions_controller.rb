class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)

    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_back_or_to(root_path, flash: { success: "Logged in successfully." } )
    else
      flash.now.alert = "Invalid name or password."
      render 'new'
    end
  end

  def destroy
    sign_out_user
    redirect_to :root, flash: { success: "Logged out successfully." }
  end
end
