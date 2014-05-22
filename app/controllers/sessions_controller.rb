class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to :root
    else
      redirect_to sign_in_path
    end
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
