FactoryBot.define do
  factory :appointment do
    user_id { nil }
    doctor_id { nil }
    date { Faker::Date.date }
    time { Faker::Time.time }
    location { Faker::Providers.geo }
  end
end
