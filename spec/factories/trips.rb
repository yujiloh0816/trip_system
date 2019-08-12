FactoryBot.define do
  factory :trip do
    title { "皇居一周" }
    on_date { "2019-08-12" }
    of_difficulty { 1 }
    need_bike { 1 }
  end
end
