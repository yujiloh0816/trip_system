require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  let!(:imperial_palace) { FactoryBot.create(:trip) }
  let!(:bicycle01){FactoryBot.create(:bicycle, trip_id: imperial_palace.id)}
  let!(:bicycle02){FactoryBot.create(:bicycle, trip_id: imperial_palace.id)}

  it "prepare_trip" do
    expect(imperial_palace.bicycles.first.clean).to eq false
    Mechanic.prepare_trip(imperial_palace.bicycles)
    expect(imperial_palace.bicycles.first.clean).to eq true
  end

end
