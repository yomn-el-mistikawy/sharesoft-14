require 'spec_helper'

describe EntityAvailableInternship do
	it "change internship status" do
    entity = Entity.new(name: "adel")
    entity_intern = EntityAvailableInternship.new(name: entity.name, available: 0, entity_id: entity.id)
    expect(Entity.all.size).to eq(1)
    expect(EntityAvailableInternship.all.size).to eq(1)
	end
end