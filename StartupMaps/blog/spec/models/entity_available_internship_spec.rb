require 'spec_helper'

describe EntityAvailableInternship do
	it "change internship status" do
    entity = Entity.create(name: "adel", email: "adel@gmail.com", password: "12345678")
    entity_intern = EntityAvailableInternship.create(name: "entity.name", available: 0, entity_id: "entity.id")
    expect(EntityAvailableInternship.all.size).to eq(1)
    expect(Entity.all.size).to eq(3)
	end
end