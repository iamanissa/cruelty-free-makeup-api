class Brand < ApplicationRecord
  # model association
  has_one :official_website, dependent: :destroy
  has_many :purchase_websites, dependent: :destroy
  has_many :products, dependent: :destroy

  # validations
  validates_presence_of :name
end
