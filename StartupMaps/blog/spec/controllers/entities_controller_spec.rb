require 'spec_helper'

describe EntitiesController do
  it "Achieved number of views badge" do
    entity = Entity.create!(name: "Yomnawy", username: "Yomnawy", email: "yomnawy@gmail.com")
    entity.update(:type => "Startup")
    startup = Startup.create!(:entity_id => entity.id)
    counter = 0 
    while counter <= 10000	
      session.stub(:current_entity).and_return(counter + 1)
      get :show, :id => entity.id
      counter = counter + 1
    end
    session.stub(:current_entity).and_return(entity.id)
    get :show, :id => entity.id
    @badges_id = StartupsBadges.select(:badge_id).where(:startup_id => startup.id)
    expect(@badge_id).to eq([4,5,6,20])
  end	
end
