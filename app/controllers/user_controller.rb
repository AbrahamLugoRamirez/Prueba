class UserController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        redirect_to '/dashboard'
        return
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    skip_before_action :verify_authenticity_token, :only => :create
end
