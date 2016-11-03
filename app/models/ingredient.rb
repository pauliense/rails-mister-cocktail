class Ingredient < ApplicationRecord

  has_many :doses

  validates :name, presence: true, uniqueness: true

end



# could also be an option

  # INGREDIENT = ["lemon", "whisky", "gin", "wodka", "cranberry juice", "orange juice", "soda", "coke", "ice", "mint leaves", "tonic", "Lemon"]

# inclusion: {in: INGREDIENT, allow_nil: false},
