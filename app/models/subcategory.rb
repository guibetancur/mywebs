class Subcategory < ApplicationRecord
   has_many :recommendations
   belongs_to :category
end
