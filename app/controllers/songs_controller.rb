class SongsController < ApplicationController

  before_filter :find_playlist_item

  def new
    @song = @item.build_song
  end

  private
    def find_playlist_item
      @playlist = Playlist.find(params[:playlist_id])
      @item = Item.find(params[:item_id])
    end

end
