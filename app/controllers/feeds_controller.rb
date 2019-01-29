class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :edit, :update, :destroy]
  def index
    @feeds = Feed.all
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to feeds_path, notice: "Feedを投稿しました"
    else
      render "new"
    end
  end

  def new
    @feed = Feed.new
  end

  def confirm
    @feed = Feed.new(feed_params)
  end

  def show
  end

  def edit
  end

  def update
    if @feed.update(feed_parms)
      redirect_to feeds_path, notice: "Feedを編集しました"
    else
      render "edit"
    end
  end

  def destroy
    @feed.destroy
    redirect_to feeds_path, notice: "Feedを削除しました"
  end

  private

  def feed_params
    params.require(:feed).permit(:title, :content, :image)
  end

  def set_feed
    @feed = Feed.find(params[:id])
  end
end
