require 'rails_helper'

RSpec.describe TripFinder, type: :model do

  let!(:moe) { FactoryBot.create(:customer) }
  let!(:imperial_palace01) { FactoryBot.create(:trip) }
  let!(:imperial_palace02) { FactoryBot.create(:trip) }
  let!(:road_bicycle) { FactoryBot.create(:bicycle) }

  it "suitable_trips" do
    trip_finder = TripFinder.create(
      on_date: moe.on_date,
      of_difficulty: moe.of_difficulty,
      need_bike: moe.need_bike,
    )

    suitable_trips = {
      trips: [imperial_palace01, imperial_palace02],
      bicycle: road_bicycle
    }
    
    expect(trip_finder.suitable_trip_plans).to eq suitable_trips
  end

end
