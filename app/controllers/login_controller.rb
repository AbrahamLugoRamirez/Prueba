class LoginController < ApplicationController
  def index
    if user_signed_in?
      return redirect_to tweets_path
    end
  end
end
