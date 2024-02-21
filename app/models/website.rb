class Website < ApplicationRecord
  # Eventually this will be something like a store website, where brands can be purchased from.
  belongs_to :brand

  validates_presence_of :name, :url
end
