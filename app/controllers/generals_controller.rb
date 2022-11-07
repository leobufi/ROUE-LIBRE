class GeneralsController < ApplicationController

  def new
    @general = General.new
  end

  def create
    @general = General.new(general_params)
    if @general.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @general = General.find(params[:id])
  end

  def update
    @general = General.find(params[:id])
    if @general.update(general_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @general = General.find(params[:id])
    @general.destroy
    redirect_to root_path
  end

  private

  def general_params
    params.require(:general).permit(:video_link)
  end

end
