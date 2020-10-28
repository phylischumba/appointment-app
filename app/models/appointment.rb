class Appointment < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :doctor, foreign_key: :doctor_id

  validates_presence_of :date, :time, :user_id, :doctor_id
end
