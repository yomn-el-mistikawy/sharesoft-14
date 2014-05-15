require 'spec_helper'

describe Project do
  before(:each) do
    @valid_project = {
      name: "Save Unicorns",
      description: "Because Unicorns are awesome sauce (duh) we must save them",
      category: "Obvious stuff"
    }
  end

  it "should create a project given valid information" do
    project = Project.new(@valid_project)
    expect(project).to be_valid
  end

  it "should not create a project if name is missing" do
    project = Project.new(@valid_project.merge!(:name => ""))
    expect(project).to_not be_valid
  end

  it "should not create a project if name is too short (less than 3 characters)" do
    project = Project.new(@valid_project.merge!(:name => "HA"))
    expect(project).to_not be_valid
  end

  it "should not create a project if name is too long (more than 150 characters)" do
    project = Project.new(@valid_project.merge!(:name => "HA" * 150))
    expect(project).to_not be_valid
  end

  it "should have two errors on name (short and missing)" do
    expect(Project.new(@valid_project.merge!(:name => ""))).to have(2).errors_on(:name)
  end 

  it "should have an error on description (missing)" do
    expect(Project.new(@valid_project.merge!(:description => ""))).to have(1).errors_on(:description)
  end

  it "should have an error on category (missing)" do
    expect(Project.new(@valid_project.merge!(:category => ""))).to have(1).errors_on(:category)
  en


  it "should not be valid if the name is not unique" do
    Project.create!(@valid_project)
    invalid_project = Project.new(@valid_project)
    expect(invalid_project).to_not be_valid
  end

  it "should not create a project if description is missing" do
    project = Project.new(@valid_project.merge!(:description => ""))
    expect(project).to_not be_valid
  end

  it "should not create a project if category is missing" do
    project = Project.new(@valid_project.merge!(:category => ""))
    expect(project).to_not be_valid
  end
end
