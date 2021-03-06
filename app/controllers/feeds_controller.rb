class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :edit, :update, :destroy]
  def index
    @feeds = Feed.all
  end

  def create
    @feed = current_user.feeds.build(feed_params)
    if @feed.save
      redirect_to feeds_path, notice: "Feedを投稿しました"
    else
      render "new"
    end
  end

  def new
    if params[:back]
      @feed = Feed.new(feed_params)
    else
      @feed = Feed.new
    end
  end

  def confirm
    @feed = current_user.feeds.build(feed_params)

    render :new if @feed.invalid?
  end

  def show
    @favo = current_user.favos.find_by(feed_id: @feed.id)
  end

  def edit
  end

  def update
    if @feed.update(feed_params)
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
    params.require(:feed).permit(:title, :content, :image, :image_cache)
  end

  def set_feed
    @feed = Feed.find(params[:id])
  end
end
