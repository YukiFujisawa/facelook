class FavosController < ApplicationController
  def create
    favo = current_user.favos.create(feed_id: params[:feed_id])
    redirect_to feeds_url, notice: "#{favo.feed.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favo = current_user.favos.find_by(id: params[:id]).destroy
    redirect_to feeds_url, notice: "#{favo.feed.user.name}さんのブログをお気に入り解除しました"
  end
end
