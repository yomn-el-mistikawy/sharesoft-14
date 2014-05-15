require 'spec_helper'

describe Entity do
  it "updates work_status" do
    entity = Entity.create(name: "Ola", username: "olaenaba", email: "ola@gmail.com", password: "12345678", type: "Startup")
    entity_work_status = EntityWorkStatus.create(entity_id: entity.id, workstatus: "on hold")
    expect(EntityWorkStatus.where(:entity_id => entity.id)).to eq([entity_work_status])
    entity_work_status1 = EntityWorkStatus.create(entity_id: entity.id, workstatus: "on hold")
    expect(EntityWorkStatus.where(:entity_id => entity.id).last!).to eq(entity_work_status1)
  end
 	it "is invalid without a work_status" do
	  expect(EntityWorkStatus.new(workstatus: nil)).to have(1).errors_on(:workstatus)
	end
	it "is invalid with a other work_status" do
	  expect(EntityWorkStatus.new(workstatus: "other")).to have(1).errors_on(:workstatus)
	end
end

