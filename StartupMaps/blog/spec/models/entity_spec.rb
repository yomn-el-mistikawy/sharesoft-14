require 'spec_helper'

describe Entity do
  it "creates a geo group when startup is saved" do
    @entity = Entity.new
    @entity.id = 1
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.save
    @entity.create_geo_group_and_add_startup
    @group = Group.find_by_location("Cairo")
    expect(@group).not_to be_nil
    @group_startup = GroupsStartup.where(startup_id: 1, group_id: @group.id)
    expect(@group_startup).not_to be_nil
	end

  it "no duplicate geo groups and startup added" do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.id = 1
    @entity.create_geo_group_and_add_startup
    @entity2 = Entity.new
    @entity2.location = "Cairo"
    @entity2.id = 2
    @entity2.create_geo_group_and_add_startup
    @group = Group.where(location: "Cairo")
    expect(@group.size).to be = 1
    @group_startup = GroupsStartup.where(startup_id: 1, group_id: @group.id)
    expect(@group_startup).not_to be_nil
    @group_startup = GroupsStartup.where(startup_id: 2, group_id: @group.id)
    expect(@group_startup).not_to be_nil
  end

  xit "destroys a geo group when last startup is destroyed and startup removed from groups." do
    @entity = Entity.new
    @entity.type = "Startup"
    @entity.location = "Cairo"
    @entity.id = 1
    @entity.create_geo_group_and_add_startup
    @group = Group.find_by_location("Cairo")
    @group_id = @group.id
    @entity.destroy
    @entity.destroy_geo_group_and_remove_from_groups
    @group = Group.find_by_location("Cairo")
    expect(@group).to be_nil
    @group_startup = GroupsStartup.where(startup_id: 1, group_id: @group_id)
    expect(@group_startup).to be_nil
	end


end
