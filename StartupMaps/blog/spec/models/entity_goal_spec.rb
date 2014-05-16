require 'spec_helper'

describe EntityGoal do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a job" do
		@entity = Entity_goal.new
		@entity.goals = "Infocus"
		expect(@entity).to be_valid
	end

	it "is not valid without a job" do
		expect(Entity_goal.new(goals: nil)).to have(1).errors_on(:goals)
	end

end
