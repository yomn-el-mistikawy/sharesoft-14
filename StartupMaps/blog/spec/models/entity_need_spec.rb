require 'spec_helper'

describe EntityNeed do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with a job" do
		@entity = Entity_need.new
		@entity.needs = "Infocus"
		expect(@entity).to be_valid
	end

	it "is not valid without a job" do
		expect(Entity_need.new(needs: nil)).to have(1).errors_on(:needs)
	end

end
