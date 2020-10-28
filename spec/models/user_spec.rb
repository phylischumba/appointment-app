require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:appointments).dependent(:destroy) }
    it { should have_many(:doctors).dependent(:destroy) } 
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
