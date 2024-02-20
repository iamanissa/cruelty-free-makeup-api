class Website < ApplicationRecord
  belongs_to :brand

  validates_presence_of :name, :url
end
