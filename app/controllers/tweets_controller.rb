class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :update, :destroy]
  
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def error
  end
  
  def create
    @tweet = Tweet.new(tweets_params)
    if @tweet.save
      redirect_to tweets_path, notice: "投稿が完了しました！"
    else
      render :error
    end
  end
  
  def edit
  end
  
  def update
    if @tweet.update(tweets_params)
      redirect_to tweets_path, notice: "編集が完了しました！"
    else
      render :error
    end
  end
  
  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "削除しました！"
  end
  
  private
    def tweets_params
      params.require(:tweet).permit(:content)
    end
    
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
end
