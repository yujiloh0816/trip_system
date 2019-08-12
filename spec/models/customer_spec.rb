require 'rails_helper'

RSpec.describe Customer, type: :model do

  let!(:moe) { FactoryBot.create(:customer) }
  let!(:imperial_palace) { FactoryBot.create(:trip) }
  let!(:road_bicycle) { FactoryBot.create(:bicycle, trip_id: imperial_palace.id) }

  it "suitable_trips" do
    expect(moe.suitable_trips("2019-08-12".to_date, 1)).to include imperial_palace
  end

  it "suitable_bicycle" do
    expect(moe.suitable_bicycle("2019-08-12".to_date, 1)).to eq road_bicycle
  end

end
