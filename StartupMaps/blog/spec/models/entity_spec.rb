require 'spec_helper'

describe Entity do
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