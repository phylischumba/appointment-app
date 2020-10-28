require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'associations' do
    it { should have_many(:appointments).dependent(:destroy) }
    it { should have_many(:users) } 
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:specialization) }
    it { should validate_presence_of(:professional_statement) }
    it { should validate_presence_of(:practice_from) }
  end
end
