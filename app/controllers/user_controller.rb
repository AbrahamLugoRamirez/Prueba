class UserController < ApplicationController

    def index
        @users = User.all
    end

    def new
    end
    
    def create
        User.create({
            username: params[:username],
            email: params[:email],
            password: params[:password],
        })
        @response = "great"
    end

    skip_before_action :verify_authenticity_token, :only => :create
end
