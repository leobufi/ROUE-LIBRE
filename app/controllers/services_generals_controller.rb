class ServicesGeneralsController < ApplicationController

  def new
    @services_general = Services_general.new
  end

  def create
    @services_general = Services_general.new(services_general_params)
    if @services_general.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @services_general = Services_general.find(params[:id])
  end

  def update
    @services_general = Services_general.find(params[:id])
    if @services_general.update(services_general_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @services_general = Services_general.find(params[:id])
    @services_general.destroy
    redirect_to root_path
  end

  private

  def services_general_params
    params.require(:services_general).permit(:description)
  end

end
