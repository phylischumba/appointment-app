class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments, dependent: :destroy
  # has_many :doctor

  validates_presence_of :name, :email, :password_digest

has_secure_password
end
