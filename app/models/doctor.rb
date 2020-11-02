class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  validates_presence_of :name, :specialization, :practice_from, :professional_statement
end
