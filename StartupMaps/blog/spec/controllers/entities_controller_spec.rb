require 'spec_helper'

describe EntitiesController do
  it "Achieved number of views badge" do
    entity = Entity.create!(id: 3, name: "Yomnawy", username: "Yomnawy", email: "yomnawy@gmail.com")
    entity.update(:type => "Startup")
    startup = Startup.create!(:entity_id => entity.id)
    counter = 0 
    while counter <= 10000	
      EntitiesController.stub :current_entity => counter + 4
      get :show, :id => entity.id
      counter = counter + 1
    end
    EntitiesController.stub :current_entity => entity
    get :show, :id => entity.id
    @badges_id = StartupsBadges.select(:badge_id).where(:startup_id => startup.id)
    expect(@badges_id).to eq([4,5,6,20])
  end	
end
