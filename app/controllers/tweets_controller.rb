class TweetsController < ApplicationController

before_action :authenticate_user!

def index
    @tweets = Tweet.all
end

def show
    @tweets = Tweet.all
end

def create
    @tweets = Tweet.new(tweets_params)
    if @tweets.save
        redirect_to tweets_path
    end
end

private
def tweets_params
    
    params.require(:tweet).permit(:username, :description)
end

end
