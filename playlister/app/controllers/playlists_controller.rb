class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(whitelisted_params)

    if @playlist.save
      flash[:success] = "Playlist created"
      redirect_to root_path
    else
      flash[:error] = "Unable to save playlist"
      render :new
    end
  end

  private

  def whitelisted_params
    params.require(:playlist).permit(:name,:user_id, :song_ids => [])
  end


end
