class CondosController < ApplicationController
  before_action :find_condo, only: [:show, :edit, :update, :destroy]

  def index
    @condos = Condo.all
  end

  def show; end

  def new
    @condo = Condo.new # needed to instantiate the form_for
  end

  def create
    @condo = Condo.new(condo_params)
    @condo.save
    redirect_to condo_path(@condo)
  end

  def edit; end

  def update
    @condo.update(condo_params)
    redirect_to condo_path(@condo)
  end

  def destroy
    @condo.destroy
    redirect_to condos_path
  end

  private

  def condo_params
    params.require(:condo).permit(:address, :price, :bedroom, :bathroom, :size)
  end

  def find_condo
    @condo = Condo.find(params[:id])
  end
end
