require 'spec_helper'

describe EntityJob do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with a job" do
		@entity = Entity_job.new
		@entity.jobs = "Infocus"
		expect(@entity).to be_valid
	end

	it "is not valid without a job" do
		expect(Entity_job.new(jobs: nil)).to have(1).errors_on(:jobs)
	end
end
