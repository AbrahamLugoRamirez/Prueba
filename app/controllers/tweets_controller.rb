class TweetsController < ApplicationController

def index
    @tweets = Tweet.all
end

def show
    @tweets = Tweet.all
end
def new
    @tweets = Tweet.show
  end

def create
    @tweets = Tweet.new(tweets_params)
    
        if @tweets.save
            redirect_to tweets_path, notice: 'hello'
            
        else
            redirect_to tweets_path

        end
    
end
def destroy
    @post = Tweet.find(params[:id])
    @post.destroy
    redirect_to tweets_path
end

private
def tweets_params
    
    params.require(:tweet).permit(:username, :description)
end

end
