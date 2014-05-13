require 'spec_helper'

describe ProjectsController do
 describe "POST create" do
  it "create a project" do
 	entity = Entity.create(name: "Hana", email: "hana@gmail.com", username: "hana", password: "12345678")
 	entity.update(type: "Startup")
 	startup = Startup.create(name: "Hana")
 	project = Project.create!(name: "HanaMagdy", description: "Hana", category: "Clothes")
    post :create, :project => project, :startup_id => startup.id
    @project = Project.all
    @startups_projects = ProjectsStartup.all
    expect(@project).to eq([project])
    # expect(startups_projects).to eq()
    end
 end	
end
