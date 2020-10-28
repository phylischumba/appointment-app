FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { 'john@doe.com' }
    password { 'password' }
    password_digest { 'password' }
  end
end