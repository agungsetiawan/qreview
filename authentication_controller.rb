class AuthenticationController < ApplicationController
  def create
    user = AuthenticationService.new(params[:username], params[:password]).call

    if user
      render json: user
    else
      render json: { errors: ["wrong username or password"] }, status: :unauthorized
    end
  end
end