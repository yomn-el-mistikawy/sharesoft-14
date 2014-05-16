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