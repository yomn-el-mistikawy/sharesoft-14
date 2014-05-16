require 'spec_helper'

describe Entity do
<<<<<<< HEAD
  it "updates company status" do
    entity = Entity.create(name: "Ola", username: "olaenaba", email: "ola@gmail.com", password: "12345678", type: "Startup")
    entity.update(:type => "Startup")
    startup = Startup.create(entity_id: entity.id, company_status: 1)
    expect(startup.company_status).to eq(true)
    startup.update(:company_status => 0)
    expect(startup.company_status).to eq(false)
  end
end
=======
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
>>>>>>> b867e1c1a5c7f7af0d70f77647ca5336da76cfdf
