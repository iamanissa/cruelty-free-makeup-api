require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe 'Schema' do
    it { should have_db_column(:id) }
    it { should have_db_column(:name) }
    it { should have_db_column(:url) }
    it { should have_db_column(:price_category) }
    it { should have_db_column(:updated_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:cruelty_free).with_options(default: true, null: false) }
    it { should have_db_column(:vegan).with_options(default: false, null: false) }
    it { should have_db_column(:organic).with_options(default: false, null: false) }
    it { should have_db_column(:leaping_bunny).with_options(default: false, null: false) }
    it { should have_db_column(:peta).with_options(default: false, null: false) }
    it { should have_db_column(:clean_beauty).with_options(default: false, null: false) }
    it { should have_db_column(:choose_cruelty_free).with_options(default: false, null: false) }

    it "is_expected.to have exactly 13 columns" do
      expect(subject.class.column_names.count).to equal(13)
    end
  end

  describe 'Relationships' do
    it { should have_many(:products).dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
  end
end
