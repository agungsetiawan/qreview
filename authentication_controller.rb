class AuthenticationController < ApplicationController
  def auth
    user = User.find(params[:username])
    if user.check_password(params[:password])
      render json: user
    else
      render json: { errors: ["wrong username or password"] }, status: :unauthorized
    end
  end
end