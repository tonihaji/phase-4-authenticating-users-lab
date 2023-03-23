class UsersController < ApplicationController
    def show
      if session[:user_id]
        user = User.find(session[:user_id])
        render json: user
      else
        render json: { error: 'Not logged in' }, status: :unauthorized
      end
    end
  end
  