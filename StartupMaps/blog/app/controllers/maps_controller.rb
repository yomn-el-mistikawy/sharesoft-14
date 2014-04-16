class MapsController < ApplicationController
end
lass MapsController < ApplicationController

# Defintion: gets all startups in the db and creates markers.
# Input: Startup Table.
# Output: online Startups.
# Author: Alia Tarek.

	def  show_startups
		@startups = User.all
		@hash = Gmaps4rails.build_markers(@startups) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name

        	#marker.picture({"url" =>" ","width" => 32,u]y"height"=> 32})
		 end
	end


# Defintion: gets all Investors in the db and shows them on the map.
# Input: Investors Table.
# Output: all Investors.
# Author: Alia Tarek.

	def  show_investors
		@investors = Investor.all
    end


# Defintion: gets all Services in the db and shows them on the map.
# Input: Services Table.
# Output: all Services.
# Author: Alia Tarek.

	def  show_services
		@services = Service.all
	end


# Defintion: gets all merged startups in the db and shows them on the map.
# Input: Startup Table.
# Output: merged Startups.
# Author: Alia Tarek.

	def  show_merged
		@merged = Startup.where(:joint_ventures != "")
	end


# Defintion: gets all launched startups in the db and shows them on the map.
# Input: Startup Table.
# Output: launched Startups.
# Author: Alia Tarek.

	def  show_launched
		@launched = Startup.where(:launched_Status => true)
	end


# Defintion: gets all not yet launched in the db and shows them on the map.
# Input: Startup Table.
# Output: not yet launched Startups.
# Author: Alia Tarek.

	def  show_not_launched
		@not_launched = Startup.where(:launched_Status => false)
	end


# Defintion: gets all online startups in the db and shows them on the map.
# Input: Startup Table.
# Output: online Startups.
# Author: Alia Tarek.

	def  show_online
		@online = Startup.where(:online_Status => true)
	end


# Defintion: gets all offline startups in the db and shows them on the map.
# Input: Startup Table.
# Output: onffline Startups.
# Author: Alia Tarek.

	def  show_offline
		@offline = Startup.where(:online_Status => false)
	end
end


