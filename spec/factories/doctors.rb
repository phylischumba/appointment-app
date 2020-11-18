FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    specialization { Faker::Lorem.characters(number: 30) }
    professional_statement { Faker::Lorem.characters }
    practice_from { Faker::Date.between(from: '2014-09-23', to: '2020-09-25') }
    association user
  end
end
