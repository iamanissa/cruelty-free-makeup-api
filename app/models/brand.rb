class Brand < ApplicationRecord
  # model association
  has_many :products, dependent: :destroy

  # validations
  validates_presence_of :name, :url
end
