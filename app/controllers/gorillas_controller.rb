class GorillasController < ApplicationController
  def new
    @gorilla = Gorilla.new
  end

  def create
    @gorilla = Gorilla.new(gorilla_params)
    if @gorilla.save
      redirect_to :gorillas
    else
      render :new
    end
  end

  def update
    @gorilla = Gorilla.find(params[:id])
    if @gorilla.update(gorilla_params)
      redirect_to gorilla_path(@gorilla)
    else
      render :edit
    end
  end

  def edit
    @gorilla = Gorilla.find(params[:id])
  end

  def destroy
    @gorilla = Gorilla.find(params[:id])
    @gorilla.destroy
    redirect_to :gorillas
  end

  def show
    @gorilla = Gorilla.find(params[:id])
  end

  def index
    @gorillas = Gorilla.all
  end

  private
    def gorilla_params
      params.require(:gorilla).permit(:name, :description, :anger_level)
    end

end
