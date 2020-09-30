class TweetsController < ApplicationController

before_action :authenticate_user!

def index
    @tweets = current_user.tweets
end

def show
    @tweets = current_user.tweets
end

def create
    # @tweets = Tweet.new(tweets_params)
    @tweets = current_user.tweets.new(tweets_params)
    if @tweets.save
        redirect_to tweets_path
    end
end

private
def tweets_params
    params.require(:tweet).permit(:username, :description)
end

end
