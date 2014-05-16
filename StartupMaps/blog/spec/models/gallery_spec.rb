require 'spec_helper'

describe Gallery do
  it "is valid with a name" do
    gallery = Gallery.new(name: 'new gallery')
expect(gallery).to be_valid 
end


it "is invalid without a name" do
  expect(Gallery.new(name: nil)).to have(1).errors_on(:name)
end
end
