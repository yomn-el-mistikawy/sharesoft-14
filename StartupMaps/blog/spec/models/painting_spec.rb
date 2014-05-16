require 'spec_helper'

describe Painting do
	before(:each)do
	@valid_image = {
		name: "sandra",
		image: "UPLOAD"	
		}
		end


it "is not valid with a name" do
   painting = Painting.new(@valid_image.merge!(:name =>"zandra"))
   expect(painting).to_not be_valid 
end
  it "is not valid with a image" do
   painting = Painting.new(@valid_image.merge!(:image => "zandra"))
   expect(painting).to_not be_valid 
end

it "is invalid without a name" do
  expect(Painting.new(name: nil)).to have(1).errors_on(:name)
end

it "is invalid without an image" do
  expect(Painting.new(image: nil)).to have(1).errors_on(:image)
end

end






