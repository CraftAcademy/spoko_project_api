require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Products database Table check' do
    it { is_expected.to have_db_column(:size).of_type(:text) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:price).of_type(:float) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :size }
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :size }
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Associations' do
  end

  describe 'Factory' do
    it 'is expected to be valid' do
      expect(create(:order)).to be_valid
    end
  end
end
