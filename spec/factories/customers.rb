FactoryBot.define do
  factory :customer do
    name { "moe" }
    on_date { "2019-08-12" }
    of_difficulty { 1 }
    need_bike { 1 }
  end
end
