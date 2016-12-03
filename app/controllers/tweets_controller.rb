class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    Tweet.create(tweets_params)
    redirect_to tweets_path, notice: "投稿が完了しました！"
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweets_params)
    redirect_to tweets_path, notice: "編集が完了しました！"
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path, notice: "削除しました！"
  end
  
  private
    def tweets_params
      params.require(:tweet).permit(:content)
    end
end
