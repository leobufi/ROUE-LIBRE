class ServicesCategoriesController < ApplicationController

  def new
    @services_category = Services_category.new
  end

  def create
    @services_category = Services_category.new(services_category_params)
    if @services_category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @services_category = Services_category.find(params[:id])
  end

  def update
    @services_category = Services_category.find(params[:id])
    if @services_category.update(services_category_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @services_category = Services_category.find(params[:id])
    @services_category.destroy
    redirect_to root_path
  end

  private

  def services_category_params
    params.require(:services_category).permit(:title, :description)
  end

end
