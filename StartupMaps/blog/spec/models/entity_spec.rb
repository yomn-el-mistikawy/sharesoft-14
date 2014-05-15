require 'spec_helper'

describe Entity do
  it "updates company status" do
    entity = Entity.create(name: "Ola", username: "olaenaba", email: "ola@gmail.com", password: "12345678", type: "Startup")
    entity.update(:type => "Startup")
    startup = Startup.create(entity_id: entity.id, company_status: 1)
    expect(startup.company_status).to eq(true)
    startup.update(:company_status => 0)
    expect(startup.company_status).to eq(false)
  end
end
