require 'spec_helper'
require 'factory_girl_rails'
require 'faker'

describe Group do

 it "is valid with an actual group member" do
@group1 = Group.create(name: "LOL", description: "LOL", id: "1")


 @startup1 = Startup.create(id:"1")
 	
 @startup2 = Startup.create(id:"2")

@group_startup1 = GroupsStartup.create(group_id: @group1.id, startup_id: @startup1.id)

@group_startup2 = GroupsStartup.create(group_id: @group1.id, startup_id: @startup2.id)
 expect(GroupsStartup.where(group_id: @group1.id).size).to eq(2)
 end
end
describe Group do
	it "is valid with a group name and a description" do
		@group = Group.new
		@group.name = "Infocus"
		@group.description = "Software Development"
		@group.interest = "Software"
		expect(@group).to be_valid
	end

	it "is not valid without a name" do
		expect(Group.new(name: nil)).to have(1).errors_on(:name)
	end

	it "is not valid without a description" do
		expect(Group.new(description: nil)).to have(1).errors_on(:description)
	end

	it "is not valid without an interest" do
		expect(Group.new(interest: nil)).to have(1).errors_on(:interest)
	end
  
end