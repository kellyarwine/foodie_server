class Recipe < ActiveRecord::Base
  has_many :ingredients

  attr_accessible :image_url, :source_url, :title
end
