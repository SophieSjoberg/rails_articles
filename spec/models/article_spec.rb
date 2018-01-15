require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :author }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to have_db_column :author}
  end

  context 'Factory' do
    it 'should be valid' do
    expect(FactoryBot.create(:article)).to be_valid
    end
  end
end
