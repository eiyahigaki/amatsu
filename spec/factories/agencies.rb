FactoryBot.define do
  factory :agency do
    email                 {Faker::Internet.free_email}
    password              {Faker::Lorem.characters(number: 10, min_alpha: 1, min_numeric: 1)}
    password_confirmation {password}
    agency_name           {Faker::Company.name}
    agency_president      {Faker::Internet.username}
    prefecture_id         {Faker::Number.between(from: 2, to: 48)}
    city                  {Faker::Address.city}
    house_number          {Faker::Address.street_address}
    building_name         {Faker::Address.building_number}
    permit_number         {'00-000000'}
    website               {Faker::Internet.url(host: 'example.com')}
  end
end