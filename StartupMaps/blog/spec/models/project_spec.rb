require 'spec_helper'

describe Project do
  it "Creates project" do
    project = Project.new(
    	name: "Hana",
    	description: "Hana's project",
    	category: "Clothes")
    expect(project).to be_valid
  end

  it "inserts into ProjectsStartup" do
       project = Project.new(
    	name: "Hana",
    	description: "Hana's project",
    	category: "Clothes")
       startup = Startup.create(name: "Hana")
       project_startup = ProjectsStartup.create(startup_id: startup.id, project_id: project.id)
       expect(ProjectsStartup.where(startup_id: startup.id)).to eq([project_startup])
  end	
end
