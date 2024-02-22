require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Schema' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :type} # FIXME: Type is a reserved word for STI, fix this.
    it {is_expected.to have_db_column :color_number}
    it {is_expected.to have_db_column :color_name}

    it {is_expected.to have_db_column :ingredients}
    it {is_expected.to have_db_column :brand_id}
    it {is_expected.to have_db_column :created_at}
    it {is_expected.to have_db_column :updated_at}
    # it {is_expected.to have_db_column :}

    it "is_expected.to have exactly 9 columns" do
      expect(subject.class.column_names.count).to equal(9)
    end
  end

  describe 'Relationships' do
    it { should belong_to(:brand) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:type) }
  end
end
