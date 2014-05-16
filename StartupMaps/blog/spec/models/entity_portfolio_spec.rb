require 'spec_helper'

describe EntityPortfolio do
	before(:each)do
	@valid_entity_portfolio ={ name: "mozdan",description:"hahaha"}
end

it "is not valid with a name" do
   entity_portfolio = EntityPortfolio.new(@valid_entity_portfolio.merge!(:name =>"mozdan"))
   expect(entity_portfolio).to_not be_valid
end

  it "is not valid with a description" do
   entity_portfolio = EntityPortfolio.new(@valid_entity_portfolio.merge!(:name => "mozdan"))
   expect(entity_portfolio).to_not be_valid
end

 it "is not valid with a launch" do
   entity_portfolio = EntityPortfolio.new(@valid_entity_portfolio.merge!(:name => "mozdan"))
   expect(entity_portfolio).to_not be_valid
end

it "is invalid without a launch" do
  expect(EntityPortfolio.new(launch: nil)).to have(1).errors_on(:launch)
end

it "is invalid without a name" do
  expect(EntityPortfolio.new(name: nil)).to have(1).errors_on(:name)
end

it "is invalid without an image" do
  expect(EntityPortfolio.new(description: nil)).to have(1).errors_on(:description)
end

end

  #pending "add some examples to (or delete) #{__FILE__}"
#end
