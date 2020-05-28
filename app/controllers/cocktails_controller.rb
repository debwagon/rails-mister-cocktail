class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params.require(:cocktail).permit(:name, :doses, :ingredients, :photo))
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  # def doses
  #   @cocktail = Cocktail.find(params[:id])
  #   @doses = @cocktail.doses
  # end
end
