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

  it "is invalid without a name" do
    expect(Project.new(name: nil, description: "Hana", category: "Clothes")).to have(2).errors_on(:name)
  end	

  it "is invalid without a category" do
    expect(Project.new(name: "Hana", description: nil, category: "Clothes")).to have(1).errors_on(:description)
  end

  it "is invalid without a category" do
    expect(Project.new(name: "Hana", description: "Hana", category: nil)).to have(1).errors_on(:category)
  end

  it "is invalid with one character in project" do
    expect(Project.new(name: "H" , description: "Hana", category: "Clothes")).to have(1).errors_on(:name)
  end	

  it "is invalid because of name duplication" do
  	expect(Project.new(name: "yomn" , description: "Hana", category: "Clothes")).to have(1).errors_on(:name)
  end

  it "deletes the project" do
  	  project = Project.new(
        name: "Hana",
        description: "Hana's project",
        category: "Clothes")
  	  project_id = project.id
  	  expect(project).to be_valid
  	  project.destroy
      expect(Project.where(:id => project_id).size).to eq(0)
  end	
end
