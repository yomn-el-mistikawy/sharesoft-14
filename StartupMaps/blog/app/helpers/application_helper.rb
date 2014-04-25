module ApplicationHelper

  # Definition: This method takes location as input and checks if there is a gepgraphical 
  # location group for this location, if not it creates a new group for this lcation, 
  # finally it returns the id of the group for this given location,
  # it is called when a startup is signing up or updating its location.
  # Input: location.
  # Output: geographic location group id for the given location.
  # Author: Maha Salah Eldin.

  def create_geo_group(location)
    @geo = Group.find_by_location(location)
		@newgeo_id
		if @geo == nil
			@newgeo = Group.create(name: location, 
			description: "this group is to link startups in " + location, location: location, 
      creator_id: 0, interest: "none")
      @newgeo_id = @newgeo.id
    else
      @newgeo_id = @geo.id
   	end
   	return @newgeo_id
	end


  # Definition: This method finds the id of the startup using its name, it then adds this startup to 
  # the corressponding geographic location group, by calling create action on GroupsStartup using the startup_id
  # and the group_id, it is called when a startup is signing up or updating its location.
  # Input: startup name, id of the corressponding geographical location group.
  # Output: void.
  # Author: Maha Salah Eldin.

  def create_groups_startups(name, geo_id)
    @startup = Startup.find_by_name(name)
    @startup_id = @startup.id
    GroupsStartup.create(startup_id: @startup_id, group_id: geo_id)
  end


  # Definition: This method, when a startup is destroyed, it destroys all entries for 
  #this startup in groups_startups, meaning that it removes this startup from all groups.
  # Input: startup id.
  # Output: void.
  # Author: Maha Salah Eldin.

  def destroy_groups_startups(id)
    @sg = GroupsStartup.find_by_startup_id(id)
    while @sg != nil do
      @sg.destroy
      @sg = GroupsStartup.find_by_startup_id(id)
    end
  end


  # Definition: This method, when a startup is destroyed, it checks if there were no more startups in the 
  # geograohic location group of the removed startup, if yes then this group is destroyed too.
  # Input: location.
  # Output: void.
  # Author: Maha Salah Eldin.

  def destroy_geo_group(location)
    @s = Startup.find_by_location(location)
    if @s == nil
      @geo = Group.find_by_location(location)
      if @geo != nil
        @geo.destroy
      end
    end
  end
end

