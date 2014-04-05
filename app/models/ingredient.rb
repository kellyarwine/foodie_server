class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  attr_accessible :food, :prep, :qty, :unit_of_measure, :recipe_id
end
