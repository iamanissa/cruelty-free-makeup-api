require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe 'Schema' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :url}
    it {is_expected.to have_db_column :price_category}
    it {is_expected.to have_db_column :created_at}

    it {is_expected.to have_db_column :updated_at}
    # it {is_expected.to have_db_column :}

    it "is_expected.to have exactly 6 columns" do
      expect(subject.class.column_names.count).to equal(6)
    end
  end

  describe 'Relationships' do
    it { should have_many(:products).dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end
end
