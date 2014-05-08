class StartupsBadges < ActiveRecord::Base
 has_and_belongs_to_many :badges
 has_and_belongs_to_many :startups

 # Definition: This method takes the startup_id and calls different helper methods to set achieved badges.
 # It then returns an array of recently achieved badges' description.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_badges(entity_id)
  startup = Startup.find_by_entity_id(entity_id)
  recently_achieved_badge = []
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_year_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_subscription_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_launch_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_targets_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_requirements_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_view_badges(startup.id)
  recently_achieved_badge = recently_achieved_badge + StartupsBadges.set_badge_collection_badges(startup.id)
  return recently_achieved_badge
 end

  
 # Definition: This method takes the startup_id and gets the unachieved badges. If the startup is
 # 1 years old and the badge hasn't been achieved, then the badge is added to achieved. The same condition
 # is done for 2.5 years and 5 years and also the lower level badges are set as bypassed. It then returns 
 # an array of recently achieved year badges' description.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_year_badges(startup_id)
  startup = Startup.find(startup_id)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  recently_achieved_badge = []
  if (startup.number_of_working_years >= 1 && (unachieved_badges.where(:id => 1)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 1, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(1)]
  end
  if (startup.number_of_working_years >= 2.5 && (unachieved_badges.where(:id => 2)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 2, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 1).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(2)]
  end
  if (startup.number_of_working_years >= 5 && (unachieved_badges.where(:id => 3)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 3, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 2).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(3)]
  end
  return recently_achieved_badge
 end


 # Definition: This method takes the startup_id and gets the unachieved badges. It then counts get the number of views
 # the startup's profile and gives badges when the number of views reaches 1000, 5000 or 10000. It also sets the lower level badges to bypassed.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_view_badges(startup_id)
  startup = Startup.find(startup_id)
  entity = Entity.find(startup.entity_id)
  number_of_views = entity.impressionist_count(:filter=>:session_hash)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  recently_achieved_badge = []
  if (number_of_views >= 1 && (unachieved_badges.where(:id => 4)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 4, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(4)]
  end
  if (number_of_views >= 5000 && (unachieved_badges.where(:id => 5)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 5, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 4).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(5)]
  end
  if (number_of_views >= 10000 && (unachieved_badges.where(:id => 6)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 6, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 5).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(6)]
  end
  return recently_achieved_badge
 end 


 # Definition: This method takes the startup_id and gets the unachieved badges. It then counts the number
 # of requirements met in all of the startups projects and gives badges when the number of requirements met reaches
 # 50, 100 or 1000. It also sets the lower level badges to bypassed.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy 

 def self.set_requirements_badges(startup_id)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  targets_met = ProjectRequirement.where(:project_id => StartupsProjects.select(:project_id).where(:startup_id => startup_id), :reached => 1)
  recently_achieved_badge = []
  if (targets_met.count >= 50 && (unachieved_badges.where(:id => 7)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 7, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(7)]
  end
  if (targets_met.count >= 100 && (unachieved_badges.where(:id => 8)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 8, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 7).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(8)]
  end
  if (targets_met.count >= 1000 && (unachieved_badges.where(:id => 9)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 9, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 8).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(9)]
  end
  return recently_achieved_badge
 end 


 # Definition: This method takes the startup_id and gets the unachieved badges. It then counts the number
 # of targets met in all of the startups projects and gives badges when the number of targets met reaches
 # 50, 100 or 1000. It also sets the lower level badges to bypassed.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_targets_badges(startup_id)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  targets_met = ProjectTarget.where(:project_id => StartupsProjects.select(:project_id).where(:startup_id => startup_id), :reached => 1)
  recently_achieved_badge = []
  if (targets_met.count >= 50 && (unachieved_badges.where(:id => 10)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 10, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(10)]
  end
  if (targets_met.count >= 100 && (unachieved_badges.where(:id => 11)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 11, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 10).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(11)]
  end
  if (targets_met.count >= 1000 && (unachieved_badges.where(:id => 12)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 12, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 11).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(12)]
  end
  return recently_achieved_badge
 end


 # Definition: This method takes the startup_id and gets the unachieved badges. It then counts the number
 # of projects that have been launched by the startup and gives badges when the startup launches 5, 10 or 50
 # projects. It also sets the lower level badges to bypassed.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_launch_badges(startup_id)
  launched_projects = Project.where(:id => StartupsProjects.select(:project_id).where(:startup_id => startup_id), :launch => 1)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  recently_achieved_badge = []
  if (launched_projects.count >= 5 && (unachieved_badges.where(:id => 13)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 13, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(13)]
  end
  if (launched_projects.count >= 10 && (unachieved_badges.where(:id => 14)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 14, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 13).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(14)]
  end
  if (launched_projects.count >= 50 && (unachieved_badges.where(:id => 15)).size == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 15, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 14).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(15)]
  end
  return recently_achieved_badge
 end 


 # Definition: This method takes the startup_id and gets the unachieved badges. A badge is given when the
 # startup gets 100, 500 and 5000 subscriptions. When a new badge is given lower level badges are set as 
 # bypassed. It then returns an array of recently achieved year badges' description.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_subscription_badges(startup_id)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  entity_id = Startup.select(:entity_id).where(:id => startup_id)
  number_of_subscribers = Subscription.where(:subscribee_id => entity_id).count
  recently_achieved_badge = []
  if (number_of_subscribers >= 100 && (unachieved_badges.where(:id => 16)).count == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 16, :bypassed => 0)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(16)]
  end
  if (number_of_subscribers >= 500 && (unachieved_badges.where(:id => 17)).count == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 17, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 16).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(17)]
  end
  if (number_of_subscribers >= 5000 && (unachieved_badges.where(:id => 18)).count == 1)
   StartupsBadges.create(:startup_id  => startup_id, :badge_id => 18, :bypassed => 0)
   StartupsBadges.where(:startup_id => startup_id, :badge_id => 17).update_all(:bypassed => 1)
   recently_achieved_badge = recently_achieved_badge + [Badge.find(18)]
  end
  return recently_achieved_badge
 end


 # Definition: This method takes the startup_id and gets the unachieved badges. If the startup has
 # achieved all of the badges in a certain category, then a platinum badge is given and the lower level badges
 # are set as bypassed. Moreover, if all badges are collected, a platinum badge is given and lower level badges
 # are bypassed.
 # Input: startup_id
 # Output: recently_achieved_badge
 # Author: Yomn El-Mistikawy

 def self.set_badge_collection_badges(startup_id)
  unachieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 0, 0, 0, 0)
  achieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 1, 1, 0, 0)
  recently_achieved_badge = []
  if (unachieved_badges.where(:id => 19).size == 1)
   if (achieved_badges.where(:category => "year").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 19, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 3).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(19)]
   end
  end 
  if (unachieved_badges.where(:id => 20).size == 1)
   if (achieved_badges.where(:category => "view").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 20, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 6).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(20)]
   end
  end 
  if (unachieved_badges.where(:id => 21).size == 1)
   if (achieved_badges.where(:category => "requirements").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 21,:bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 9).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(21)]
   end
  end 
  if (unachieved_badges.where(:id => 22).size == 1)
   if (achieved_badges.where(:category => "targets").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 22, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 12).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(22)]
   end
  end  
  if (unachieved_badges.where(:id => 23).size == 1)
   if (achieved_badges.where(:category => "launched").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 23, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 15).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(23)]
   end
  end  
  if (unachieved_badges.where(:id => 24).size == 1)
   if (achieved_badges.where(:category => "subscribe").size == 3)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 24, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => 18).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(24)]
   end
  end
  if (unachieved_badges.where(:id => 25).size == 1)
   achieved_badges = StartupsBadges.get_achieved_unachieved_badges(startup_id, 1, 1, 0, 0)
   if (achieved_badges.where(:category => "collector").size == 6)
    StartupsBadges.create(:startup_id => startup_id, :badge_id => 25, :bypassed => 0)
    StartupsBadges.where(:startup_id => startup_id, :badge_id => [19,20,21,22,23,24]).update_all(:bypassed => 1)
    recently_achieved_badge = recently_achieved_badge + [Badge.find(25)]
   end
  end
  return recently_achieved_badge
 end 
	
	
 # Definition: This method takes the achieved and bypassed boolean values and startup_id. 
 # If the achieved and bypassed are equal to 1 then it returns all achieved badges. If the achieved is equal to 0,
 # then the unachieved badges are returned. If the achieved value is 1 and the bypassed is 0 then it returns only the 
 # not bypassed badges.
 # Input: startup_id, achieved_or_not, bypassed
 # Output: unachieved/achieved/bypassed/not bypassed badges
 # Author: Yomn El-Mistikawy

 def self.get_achieved_unachieved_badges(startup_id, achieved, bypassed, entity, category)
  if(entity == 1)
   startup_id = Startup.select(:id).where(:entity_id => startup_id)
  end
  achieved_badges_id = StartupsBadges.select(:badge_id).where(:startup_id => startup_id)
  if (achieved == 1 && bypassed == 1)
   return Badge.where(:id => achieved_badges_id).order(id: :asc)
  else
   if (achieved == 0 && category != 0)
    return Badge.where(:category => category).where.not(:id => achieved_badges_id).order(id: :asc)
   else 
    if (achieved == 0) 
      return Badge.where.not(:id => achieved_badges_id).order(id: :asc)
    else
     if (achieved == 1 && bypassed == 0)
      achieved_badges_id = StartupsBadges.select(:badge_id).where(:startup_id => startup_id, :bypassed => 0)
      return Badge.where(:id => achieved_badges_id).order(id: :asc)
     end 
    end 
   end     
  end    
 end
end