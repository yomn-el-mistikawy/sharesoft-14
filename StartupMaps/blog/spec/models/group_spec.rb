require 'spec_helper'
require 'factory_girl_rails'
require 'faker'

describe Group do

 it "is valid with a name and a description" do

 group = Group.new(

 name: 'Group One',

 description: 'LASDASDAS')
 expect(group).to be_valid
 end
end