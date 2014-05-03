class StartupsBadges < ActiveRecord::Base
	has_and_belongs_to_many :badges
    has_and_belongs_to_many :startups

  # Definition: This method takes the startup_id and calls different helper methods to set achieved badges.
  # It then returns an array of recently achieved badges' description.
  # Input: startup_id
  # Output: recently_achieved_badges
  # Author: Yomn El-Mistikawy

  def self.set_badges(startup_id)
    recently_achieved_badges = StartupsBadges.set_year_badges(startup_id)
    return recently_achieved_badges
	end

  
  # Definition: This method takes the startup_id and gets the unachieved badges. If the startup is
  # five years old and the badge hasn't been achieved, then the badge is added to achieved. The same condition
  # is done for 2.5 years and 1 year. It then returns an array of recently achieved year badges' description.
  # Input: startup_id
  # Output: recently_achieved_badges
  # Author: Yomn El-Mistikawy

  def self.set_year_badges(startup_id)
    startup = Startup.find(startup_id)
    unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0)
    recently_achieved_badges = []
    if (startup.number_of_working_years >= 5 && (unachieved_badges.where(:id => "3")).size == 1)
      StartupsBadges.create(:startup_id  => startup_id, :badge_id => 3)
      recently_achieved_badges = recently_achieved_badges + [Badge.find(3).description]
    end
    if (startup.number_of_working_years >= 2.5 && (unachieved_badges.where(:id => "2")).size == 1)
      StartupsBadges.create(:startup_id  => startup_id, :badge_id => 2)
      recently_achieved_badges = recently_achieved_badges + [Badge.find(2).description]
    end
    if (startup.number_of_working_years >= 1 && (unachieved_badges.where(:id => "1")).size == 1)
      StartupsBadges.create(:startup_id  => startup_id, :badge_id => 1)
      recently_achieved_badges = recently_achieved_badges + [Badge.find(1).description]
    end
    return recently_achieved_badges
  end


  def self.set_view_badges(startup_id)
  end 

  def self.set_target_badges(startup_id)
  end 

  def self.set_requirements_badges(startup_id)
  end 

  def self.set_launch_badges(startup_id)
  end 

  def self.set_badge_collection_badges(startup_id)
  end 
	
	
  # Definition: This method takes the startup id and a boolean value. If the boolean value
  # is 1 then it returns an array of badges achieved by the startups, else it returns an array of
  # unachieved badges.
  # Input: startup_id, achieved_or_not
  # Output: unachieved/achieved badges
  # Author: Yomn El-Mistikawy

  def self.get_achieved_unachieved_badges(startup_id, achieved)
    achieved_badges_id = StartupsBadges.select(:badge_id).where(:startup_id => startup_id)
    if (achieved == 1)
      return Badge.where(:id => achieved_badges_id).order(id: :asc)
    else
      return Badge.where.not(:id => achieved_badges_id).order(id: :asc)
    end    
  end			
end
