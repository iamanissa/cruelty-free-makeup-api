class Brand < ApplicationRecord
  # model associations
  has_many :products, dependent: :destroy

  # validations
  validates_presence_of :name
end
