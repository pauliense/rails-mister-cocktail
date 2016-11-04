class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  # , only: [:show, :edit, :update]


  def index

    @cocktails = Cocktail.all

  end


  def show
    @dose = Dose.new
    @ingredients = Ingredient.all
  end



  def new
    @cocktail = Cocktail.new
    # @dose = Dose.new
    # @ingredients = Ingredient.all
  end


def create

   @new_cocktail = Cocktail.new(cocktail_params)
   if @new_cocktail.save
    redirect_to cocktail_path(@new_cocktail)
  else
    @new_cocktail.errors.full_messages
    render :new
    end

end



def edit

end

def update


  @cocktail.update(cocktail_params)
   if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      # show them the form again with all their data & an error message
      render :new

    end


end



def destroy
    @cocktail.destroy
    redirect_to cocktails_path
end







# end


  private


# def cocktail_params

# name = params["cocktail"]["name"]

# description = params["cocktail"]["doses"]["description"]

# ingredient_id = params["cocktail"]["ingredients"]

#
# end


  # def find_dose
  #   @doses = Dose.where(cocktail: @cocktail)
  # end

def cocktail_params

  params.require(:cocktail).permit(:name)

end


  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


end
