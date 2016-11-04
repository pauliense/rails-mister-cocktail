class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update]
  # , only: [:show, :edit, :update]


  def index

    @cocktails = Cocktail.all

  end


  def show

  end



  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end


def create






   my_new_cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(my_new_cocktail)

end









# end


  private


def cocktail_params

name = params["cocktail"]["name"]

description = params["cocktail"]["doses"]["description"]

ingredient_id = params["cocktail"]["ingredients"]

  # params.require(:cocktail).permit(name, description, ingredient_id)
#
end


  # def find_dose
  #   @doses = Dose.where(cocktail: @cocktail)
  # end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


end
