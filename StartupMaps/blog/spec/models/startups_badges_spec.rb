require 'spec_helper'

describe StartupsBadges do
  it "Sets achieved number of years badges" do
    entity = Entity.create!(id: "1", name: "Yomn", username: "Yomn", email: "yomn@gmail.com")
    entity.type = "Startup"
    startup = Startup.create!(id: "1", number_of_working_years: "6", entity_id: entity.id)

    expect(StartupsBadges.set_badges(entity.id)).to eq([Badge.find(1),Badge.find(2), Badge.find(3), Badge.find(19)])
  end
end
