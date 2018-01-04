class Product < ApplicationRecord
  # model association
  belongs_to :brand

  # validation
  validates_presence_of :name, :type
end
