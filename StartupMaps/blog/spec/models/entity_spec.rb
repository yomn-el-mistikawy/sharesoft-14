require 'spec_helper'

describe Entity do
 it "updates status" do
    entity = Entity.create(name: "Ola", username: "olaenaba", email: "ola@gmail.com", password: "12345678", type: "Startup")
    entity_status = EntityStatus.create(entity_id: entity.id, status: "on hold")
    expect(EntityStatus.where(:entity_id => entity.id)).to eq([entity_status])
    entity_status1 = EntityStatus.create(entity_id: entity.id, status: "hold")
    expect(EntityStatus.where(:entity_id => entity.id).last!).to eq(entity_status1)
 end 

 it "is invalid with empty status" do
	 expect(EntityStatus.new(status: nil)).to have(1).errors_on(:status)
 end	
end

