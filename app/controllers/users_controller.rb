class UsersController < ApplicationController

  def destroy
    sign_out
    redirect_to :root
  end
end
