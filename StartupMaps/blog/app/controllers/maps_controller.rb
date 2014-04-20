class MapsController < ApplicationController

# Defintion: gets all startups in the db and shows them on the map.
# Input: Startup Table.
# Output: online Startups.
# Author: Alia Tarek.

	def  show_startups
		@startups = Starup.all
		@hash = Gmaps4rails.build_markers(@startups) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
              marker.picture({
                  "url" => "http://mapicons.nicolasmollet.com/wp-content/uploads/mapicons/shape-default/color-265cb2/shapecolor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshadowstyle-dark/gradient-iphone/foodcan.png",
                  "width"   => 32,
                  "height"  => 32
                 })
               end
        render :template => 'maps/index'
	end


# Defintion: gets all Investors in the db and shows them on the map.
# Input: Investors Table.
# Output: all Investors.
# Author: Alia Tarek.

	def  show_investors
		@investors = Investor.all
        @hash = Gmaps4rails.build_markers(@investors) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "app/assets/images/panoramicview.png",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'

    end


# Defintion: gets all Services in the db and shows them on the map.
# Input: Services Table.
# Output: all Services.
# Author: Alia Tarek.

	def  show_services
		@services = Service.all
        @hash = Gmaps4rails.build_markers(@services) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'

	end


# Defintion: gets all merged startups in the db and shows them on the map.
# Input: Startup Table.
# Output: merged Startups.
# Author: Alia Tarek.

	def  show_merged
		@merged = Startup.where(:joint_ventures != "")
        @hash = Gmaps4rails.build_markers(@merged) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'

	end


# Defintion: gets all launched startups in the db and shows them on the map.
# Input: Startup Table.
# Output: launched Startups.
# Author: Alia Tarek.

	def  show_launched
		@launched = Startup.where(:launch_status => true)
		 @hash = Gmaps4rails.build_markers(@launched) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'
	end


# Defintion: gets all not yet launched in the db and shows them on the map.
# Input: Startup Table.
# Output: not yet launched Startups.
# Author: Alia Tarek.

	def  show_not_launched
		@not_launched = Startup.where(:launch_status => false)
		 @hash = Gmaps4rails.build_markers(@not_launched) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'
	end


# Defintion: gets all online startups in the db and shows them on the map.
# Input: Startup Table.
# Output: online Startups.
# Author: Alia Tarek.

	def  show_online
		@online = Startup.where(:online_status => true)
		 @hash = Gmaps4rails.build_markers(@online) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'
	end


# Defintion: gets all offline startups in the db and shows them on the map.
# Input: Startup Table.
# Output: onffline Startups.
# Author: Alia Tarek.

	def  show_offline
		@offline = Startup.where(:online_status => false)
		 @hash = Gmaps4rails.build_markers(@offline) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.name
        	  marker.picture({
                  :picture => "app/assets/images/panoramicview.png",
                  :width   => "32",
                  :height  => "32"
                 }) 
        end
    
        render :template => 'maps/index'
	end
end


