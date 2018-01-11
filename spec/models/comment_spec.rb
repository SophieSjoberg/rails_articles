require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe 'Factory' do
    let(:article) { FactoryBot.create(:article)}
    it 'is valid' do
      expect(FactoryBot.create(:comment, article: article)).to be_valid
    end
  end

  describe 'Database' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :body }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }

  describe 'Validations' do
    it { is_expected.to validate_presence_of :body }
  end
  end
end
