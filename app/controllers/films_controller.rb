class FilmsController < ApplicationController

  def index
    @films = Film.all
    @film_categories = FilmCategory.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to film_path(@film)
    else
      render :new
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update(film_params)
      redirect_to film_path(@film)
    else
      render :new
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to root_path
  end

  private

  def film_params
    params.require(:film).permit(:finished, :in_production, :title, :description, :duration, :author_word, :prod_word, :tech_team, :diff, :festivals, :financors, :main_photo, photos: [], :affiche, :trailer, :year)
  end

end
