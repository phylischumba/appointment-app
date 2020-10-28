require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:doctor_id) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:time) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor) }
  end
end
