require 'rails_helper'

RSpec.describe Customer, type: :model do

  let!(:moe) { FactoryBot.create(:customer) }
  let!(:imperial_palace) { FactoryBot.create(:trip) }

  it "suitable_trips" do
    expect(moe.suitable_trips("2019-08-12".to_date, 1, 1)).to include imperial_palace
  end

end
