require 'spec_helper'

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
