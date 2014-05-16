require 'spec_helper'

describe Group do
  it "is created when a  startup signs up with a location" do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    expect(Group.find_by_location(@entity.location).size).should == 1
	end

  it "no duplicate geo groups" do
    @group = Group.new
    @group.location = "Cairo"
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    expect(Group.find_by_location(@entity.location).size).should == 1
  end

  it "is created when a startup updates it location" do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    @entity.location = "Mansoura"
    @entity.save
    expect(Group.find_by_location(@entity.location).size).should == 1
  end

    it "is destroyed when startups related to this location are destroyed" do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    @entity.destroy
    expect(Group.find_by_location(@entity.location).size).should == 0
  end
end
