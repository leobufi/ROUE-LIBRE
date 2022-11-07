class FilmCategoriesController < ApplicationController

  def new
    @film_category = Film_category.new
  end

  def create
    @film_category = Film_category.new(film_category_params)
    if @film_category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @film_category = Film_category.find(params[:id])
  end

  def update
    @film_category = Film_category.find(params[:id])
    if @film_category.update(film_category_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @film_category = Film_category.find(params[:id])
    @film_category.destroy
    redirect_to root_path
  end

  private

  def film_category_params
    params.require(:film_category).permit(:title)
  end
end
