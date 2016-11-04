class DosesController < ApplicationController


  before_action :set_cocktail, only: [:new, :create, :show, :edit, :update]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
  @dose = Dose.new(dose_params)
  @dose.cocktail = @cocktail
  @ingredients = Ingredient.all
  # @ingredient = Ingredient.find(params[:dose][:ingredient_id])

  # @dose.ingredient = @ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      # show them the form again with all their data & an error message
      render "cocktails/show"

    end
  end


def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end



private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
