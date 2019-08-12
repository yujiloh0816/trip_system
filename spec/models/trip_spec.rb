require 'rails_helper'

RSpec.describe Trip, type: :model do
  let!(:imperial_palace) { FactoryBot.create(:trip) }
  let!(:tom){FactoryBot.create(:mechanic)}
  let!(:bicycle01){FactoryBot.create(:bicycle, trip_id: imperial_palace.id)}
  let!(:bicycle02){FactoryBot.create(:bicycle, trip_id: imperial_palace.id)}

  it "prepare_bicycles" do
    expect(imperial_palace.bicycles.first.clean).to eq false
    imperial_palace.prepare_bicycles(imperial_palace.bicycles)
    expect(imperial_palace.bicycles.first.clean).to eq true
  end

end
