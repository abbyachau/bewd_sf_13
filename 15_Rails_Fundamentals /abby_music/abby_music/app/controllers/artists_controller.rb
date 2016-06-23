class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artists = get_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    binding.pry
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  #says which models and what attributes are permitted to be changed by the user
  def artist_params
    params.require(:artist).permit(:name, :image_link, :biography)
  end

  #DRY principle. THis is used by multiple actions, so write it once. Will be used by update, edit, show

  def get_artist
    Artist.find(params[:id])
  end

end
