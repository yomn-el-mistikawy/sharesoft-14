require 'spec_helper'

describe Entity do

  it "creates a geo group when startup is saved" do
    @entity = Entity.new
    @entity.id = 1
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    @entity.create_geo_group_and_add_startup
    @group = Group.find_by_location("Cairo")
    expect(@group).not_to be_nil
    @group_startup = GroupsStartup.where(startup_id: 1, group_id: @group.id)
    expect(@group_startup).not_to be_empty
    expect(@group_startup.size).to be == 1
	end

  it "no duplicate geo groups and startup added" do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.id = 1
    @entity.create_geo_group_and_add_startup
    @entity2 = Entity.new
    @entity2.location = "Cairo"
    @entity2.id = 2
    @entity2.create_geo_group_and_add_startup
    @geo = Group.find_by_location("Cairo")
    @group = Group.where(location: "Cairo")
    expect(@group.size).to be == 1
  end

  it "destroys a geo group when last startup is destroyed and startup removed from groups." do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.id = 1
    @entity.create_geo_group_and_add_startup
    @group = Group.find_by_location("Cairo")
    @group_id = @group.id
    @entity.destroy
    @entity.destroy_geo_group_and_remove_from_groups
    @group = Group.find_by_location("Cairo")
    expect(@group).to be_nil
    @group_startup = GroupsStartup.where(startup_id: 1, group_id: @group_id)
    expect(@group_startup).to be_empty
	end

  it "It inserts longitude and latitude in Startup" do
  	entity = Entity.create(name: "Heba", email: "heba@gmail.com", password: "12345678")
  	entity.update(type: "Startup")
  	entity.update(lat: 30, lng: 30)
  	startup = Startup.create(number_of_working_years: 6, entity_id: entity.id)
    startup.update(latitude: entity.lat, longitude: entity.lng)
    expect(startup.latitude).to eq(30)
    expect(startup.longitude).to eq(30)
  end
  
  it "It inserts longitude and latitude in Investor" do
  	entity = Entity.create(name: "Heba", email: "heba@gmail.com", password: "12345678")
  	entity.update(type: "Investor")
  	entity.update(lat: 30, lng: 30)
  	investor = Investor.create(entity_id: entity.id)
    investor.update(latitude: entity.lat, longitude: entity.lng)
    expect(investor.latitude).to eq(30)
    expect(investor.longitude).to eq(30)
  end

  it "It inserts longitude and latitude in Service" do
  	entity = Entity.create(name: "Heba", email: "heba@gmail.com", password: "12345678")
  	entity.update(type: "Service")
  	entity.update(lat: 30, lng: 30)
  	service = Service.create(entity_id: entity.id)
    service.update(latitude: entity.lat, longitude: entity.lng)
    expect(service.latitude).to eq(30)
    expect(service.longitude).to eq(30)
  end	
end