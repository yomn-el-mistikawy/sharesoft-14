class Group < ActiveRecord::Base
	has_and_belongs_to_many :startups
  has_many :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  has_many :resumes
  
  # Defintion: This method takes the group id, 
  # returns a list of group members. 
  # Input: group_id
  # Output: group_members
  # Author: Yomn El-Mistikawy

  def self.get_group_members(group)
    Startup.where(:id => (GroupsStartup.where(:group_id => group.id)))
  end


  # Definition: This method checks if the name in the search box is like the name
  # inserted in the database. 
  # Input: Search.
  # Output: Group name.
  # Author: Mozdan Ahmed.

  def self.search_group(search)
   @group= Group.find(:all, :conditions => ["name = ?", "#{search}%"])
  end  
end
