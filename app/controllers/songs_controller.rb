class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  def index
    @songs = Song.all.order(:title)
  end

  # GET /songs/1
  def show
    @sections = @song.sections.order(:name)
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song, notice: 'Música criada com sucesso!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      redirect_to @song, notice: 'Música atualizada com sucesso!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
    redirect_to songs_url, notice: 'Música removida com sucesso!'
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist, :instrument, :notes)
  end
end