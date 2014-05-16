require 'spec_helper'

describe EntityPortfolio do
	it "is valid with name and description" do
		@entity_portfolio=EntityPortfolio.new
		@entity_portfolio.name= "mozdan"
		@entity_portfolio.description= "hahahaaa"
		@entity_portfolio.launch= "2011-01-21T18:32:34+0000"
		expect(@entity_portfolio).to be_valid
end
it "is invalid without a launch" do
  expect(EntityPortfolio.new(launch: nil)).to have(1).errors_on(:launch)
end

it "is invalid without a name" do
  expect(EntityPortfolio.new(name: nil)).to have(1).errors_on(:name)
end

it "is invalid without a description" do
  expect(EntityPortfolio.new(description: nil)).to have(1).errors_on(:description)
end

end

  #pending "add some examples to (or delete) #{__FILE__}"
#end
