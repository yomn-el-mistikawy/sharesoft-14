class Entity < ActiveRecord::Base

  self.inheritance_column=nil
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :services 
  has_many :startups
  has_many :investors
  has_many :entity_statuses
  has_many :entity_work_portfolio 
  has_many :entity_video_links
  has_many :entity_social_links
  has_many :entity_needs
  has_many :entity_jobs
  has_many :entity_goals
  has_many :entity_available_internships
  has_many :senders, :through => :group_invitation
  has_many :receivers, :through => :group_invitation
  has_many :senders, :through => :send_merge_request
  has_many :receivers, :through => :send_merge_request
  has_many :subscriber, :through => :subscrtipion
  has_many :subscribee, :through => :subscrtipion
  has_many :receivers, :through => :message
  has_many :messages
  TYPES = %w[Startup Investor Service]
  SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]

  after_save :create_geo_group_and_add_startup
  after_destroy :destroy_geo_group_and_remove_from_groups

  # Definition: This method takes location as input and checks if there is a gepgraphical 
  # location group for this location, if not it creates a new group for this lcation, 
  # finally it adds this startup to the geo group,
  # it is called when a startup is signing up or updating its location.
  # Input: location, id of startup.
  # Output: void.
  # Author: Maha Salah Eldin.

  def create_geo_group_and_add_startup
    if self.type == "Startup"
      @geo = Group.find_by_location(self.location) 
      @newgeo_id
      if @geo == nil
        @geo = Group.create(name: location, 
        description: "this group is to link startups in " + location, location: location, 
        creator_id: 0, interest: "none")
      end
      @newgeo_id = @geo.id
      if GroupsStartup.check_membership(self.id, @newgeo_id).size == 0
        GroupsStartup.create(startup_id: self.id, group_id: @newgeo_id)
      end
    end
  end


  # Definition: This method, when a startup is destroyed, it checks if there were no more startups in the 
  # geograohic location group of the removed startup, if yes then this group is destroyed too, it also
  # destroys all entries for this startup in groups.
  # Input: location, and id of the startup.
  # Output: void.
  # Author: Maha Salah Eldin.

  def destroy_geo_group_and_remove_from_groups
    if self.type == "Startup"
      @s = Entity.find_by_location(self.location)
      if @s == nil
       @geo = Group.find_by_location(self.location)
        if @geo != nil
          @geo.destroy
        end
      end
      @sg = GroupsStartup.find_by_startup_id(self.id)
      while @sg != nil do
        @sg.destroy
        @sg = GroupsStartup.find_by_startup_id(self.id)
      end
    end
  end
end

