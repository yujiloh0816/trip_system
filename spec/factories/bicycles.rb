FactoryBot.define do
  factory :bicycle do
    trip_id { nil }
    trip_date { "2019-08-12" }
    route_type { 1 }
    clean { false }
    tires { false }
    chain { false }
    brakes { false }
  end
end
