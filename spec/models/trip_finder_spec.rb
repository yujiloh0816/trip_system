require 'rails_helper'

RSpec.describe TripFinder, type: :model do

  let!(:moe) { FactoryBot.create(:customer) }
  let!(:imperial_palace01) { FactoryBot.create(:trip) }
  let!(:imperial_palace02) { FactoryBot.create(:trip) }
  let!(:road_bicycle) { FactoryBot.create(:bicycle) }

  it "suitable_trips" do
    suitable_trips = {
      trips: [imperial_palace01, imperial_palace02],
      bicycle: road_bicycle
    }
    expect(TripFinder.suitable_trips(moe.on_date, moe.of_difficulty, moe.need_bike)).to eq suitable_trips
  end

end
