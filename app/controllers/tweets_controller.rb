class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render :index
  end

  def create
    @tweet = Tweet.create(
      text: params["text"],
      user_id: params[:user_id],
    )
    render :show
  end

  def show
    @tweet = Tweet.find_by(id: params["id"])
    render :show
  end
end
