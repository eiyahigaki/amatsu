FactoryBot.define do
  factory :job do
    status {'一般派遣'}
    occupation_id {Faker::Number.between(from: 2, to: 6)}
    prefecture_id {Faker::Number.between(from: 2, to: 48)}
    line_id { 2 }
    station_id {Faker::Number.between(from: 2, to: 31)}
    classification_id {Faker::Number.between(from: 2, to: 6)}
    salary {Faker::Number.between(from: 1041)}
    period_id {Faker::Number.between(from: 2, to: 6)}
    start_time { '09:00:00' }
    end_time { '18:00:00' }
    holiday   {'月'}
    association :agency

    Faker::Config.locale = 'ja'
    title  {Faker::Lorem.characters(number: 10)}
    city   {Faker::Address.city}
    house_number {Faker::Address.street_name}
    building_name {Faker::Address.street_address}
    description {Faker::Lorem.paragraphs}
  end
end
