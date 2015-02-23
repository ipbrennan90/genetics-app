class GeneticsController < ApplicationController
  before_action :set_genetic, only: [:show, :edit, :update]

  def index
    @genetics= Genetic.all
  end

  def new
    @genetic= Genetic.new
  end

  def create
    @genetic= Genetic.new(genetic_params)
    if @genetic.save
      flash[:notice] = "Genetic successfully added"
      redirect_to genetic_path(@genetic)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @genetic.update(genetic_params)
      flash[:notice]= "Genetic successfully updated"
      redirect_to genetic_path(@genetic)
    else
      render :edit
    end
  end

  def destroy
    genetic= Genetic.find(params[:id])
    if genetic.destroy
      flash[:notice]= "Genetic destroyed"
      redirect_to genetics_path
    end
  end

  private

  def set_genetic
    @genetic= Genetic.find(params[:id])
  end

  def genetic_params
    params.require(:genetic).permit(:strain, :native_location, :thc_content)
  end
  
end
