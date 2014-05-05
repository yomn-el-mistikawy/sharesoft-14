 # Definition: This initializer creates the achievements badges that are fixed in the system.
 # Input: void
 # Output: void
 # Author: Yomn El-Mistikawy

 if (Badge.all).size == 0 then
  # year badges
  Badge.create(:id => 1, :name => "Yearling", :description => "one year of service", :level => 1, :category => "year")
  Badge.create(:id => 2, :name => "Entrepreneur ", :description => "Two and a half years of service", :level => 2, :category => "year")
  Badge.create(:id => 3, :name => "Startup Graduate", :description => "Five years of service", :level => 3, :category => "year")
  # view badges
  Badge.create(:id => 4, :name => "Social newbie", :description => "1000 views", :level => 1, :category => "view")
  Badge.create(:id => 5, :name => "Social expert", :description => "5000 views", :level => 2, :category => "view")
  Badge.create(:id => 6, :name => "Hot shot", :description => "10000 views", :level => 3, :category => "view")
  # requirements badges
  Badge.create(:id => 7, :name => "Deviceful", :description => "50 requirements met", :level => 1, :category => "requirements")
  Badge.create(:id => 8, :name => "Proactive", :description => "100 requirements met", :level => 2, :category => "requirements")
  Badge.create(:id => 9, :name => "Resourceful", :description => "1000 requirements met", :level => 3, :category => "requirements")
  # targets badges
  Badge.create(:id => 10, :name => "Busy bee", :description => "50 targets met", :level => 1, :category => "targets")
  Badge.create(:id => 11, :name => "Eager beaver", :description => "100 targets met", :level => 2, :category => "targets")
  Badge.create(:id => 12, :name => "High flyer", :description => "1000 target met", :level => 3, :category => "targets")
  # launched projects
  Badge.create(:id => 13, :name => "Innovational", :description => "5 launched projects", :level => 1, :category => "launched")
  Badge.create(:id => 14, :name => "Live wire", :description => "10 launched projects", :level => 2, :category => "launched")
  Badge.create(:id => 15, :name => "Leading edge", :description => "50 launched projects", :level => 3, :category => "launched")
  # subscription projects
  Badge.create(:id => 16, :name => "Sociable", :description => "100 subscribers", :level => 1, :category => "subscribe")
  Badge.create(:id => 17, :name => "Celebraty", :description => "500 subscribers", :level => 2, :category => "subscribe")
  Badge.create(:id => 18, :name => "Worshipped", :description => "5000 subscribers", :level => 3, :category => "subscribe")
  # badge collector
  Badge.create(:id => 19, :name => "Surviver", :description => "Collected all Years of work badges", :level => 4, :category => "collector")
  Badge.create(:id => 20, :name => "VIP", :description => "Collected all popularity badges", :level => 4, :category => "collector")
  Badge.create(:id => 21, :name => "Go getter", :description => "Collected all requirements badges", :level => 4, :category => "collector")
  Badge.create(:id => 22, :name => "Visionary", :description => "Collected all target badges", :level => 4, :category => "collector")
  Badge.create(:id => 23, :name => "Fire ball", :description => "Collected all project launch badges", :level => 4, :category => "collector")
  Badge.create(:id => 24, :name => "Hall of fame member", :description => "Collected all subscription badges", :level => 4, :category => "collector")
  Badge.create(:id => 25, :name => "Badge collector", :description => "Collected all badges", :level => 4, :category => "collector")  
 end
