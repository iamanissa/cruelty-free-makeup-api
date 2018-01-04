require 'rails_helper'

RSpec.describe Product, type: :model do
  # Association test
  it { should belong_to(:brand) }

  # Validation test
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:type) }
end
