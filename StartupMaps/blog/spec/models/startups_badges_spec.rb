require 'spec_helper'

describe StartupsBadges do	
  it "Sets badges" do
  	entity = Entity.create!(id: 1, name: "Yomn", username: "Yomn", email: "yomngmail.com")
   entity.type = "Startup"
   startup = Startup.create!(id: 1, entity_id: entity.id, number_of_working_years: 6)
   project1, project2 = Project.create!(id: 1, launch: 1), Project.create!(id: 2, launch: 1)
   StartupsProjects.create(startup_id: startup.id, project_id: project1.id)
   StartupsProjects.create(startup_id: startup.id, project_id: project2.id)
   counter = 0
   projects_id_counter = 3
   while counter <= 48 do
    project = Project.create(id: projects_id_counter, launch: 1)
    StartupsProjects.create(startup_id: startup.id, project_id: project.id)
    counter = counter + 1
    projects_id_counter = projects_id_counter + 1
   end	
   counter = 0
   while counter <= 500 do
    ProjectRequirement.create(project_id: project1.id, description: "Yomn's project", reached: 1)
    ProjectRequirement.create(project_id: project2.id, description: "Yomn's project", reached: 1)
    ProjectTarget.create(project_id: project1.id, description: "Yomn's project", reached: 1)
    ProjectTarget.create(project_id: project2.id, description: "Yomn's project", reached: 1)
    counter = counter + 1 
   end	
   counter = 0
   while counter <= 5000 do
    Subscription.create(subscribee_id: entity.id, subscriber_id: counter + 1 )
    counter = counter + 1
   end	
   expect(StartupsBadges.set_badges(entity.id)).to eq([Badge.find(1), Badge.find(2), Badge.find(3), Badge.find(7), Badge.find(8), Badge.find(9), Badge.find(10), Badge.find(11), Badge.find(12), Badge.find(13), Badge.find(14), Badge.find(15), Badge.find(16), Badge.find(17), Badge.find(18), Badge.find(19), Badge.find(21), Badge.find(22), Badge.find(23), Badge.find(24)])
  end	
end
