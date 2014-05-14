class MapsController < ApplicationController
#  Defintion: Gets all startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Online Startups.
#  Author: Alia Tarek.

  def  show_startups
    @startups = Startup.all
    @markers = Gmaps4rails.build_markers(@startups) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 

  # Definition: Gets all Startups in the db and shows them on the map.
  # Input: Startups Table.
  # Output: All Investors.
  # Author: Alia Tarek.

  def show_startups
    @startups = Startup.all
    @markers = Gmaps4rails.build_markers(@startups) do |startups, marker| 
      marker.lat startups.latitude 
      marker.lng startups.longitude 
      marker.infowindow startups.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all Investors in the db and shows them on the map.
#  Input: Investors Table.
#  Output: All Investors.
#  Author: Alia Tarek.

  def  show_investors
    @investors = Startup.all
    @markers = Gmaps4rails.build_markers(@investors) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      render :json => @markers
  end


  # Definition: Gets all Investors in the db and shows them on the map.
  # Input: Investors Table.
  # Output: All Investors.
  # Author: Alia Tarek.

  def show_investors
    @investors = Investor.all
    @markers = Gmaps4rails.build_markers(@investors) do |investors, marker| 
      marker.lat investors.latitude 
      marker.lng investors.longitude 
      marker.infowindow investors.name 
      marker.picture({ 
        "url" => "http://rideforclimate.com/nukes/all/images/orange.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all Services in the db and shows them on the map.
#  Input: Services Table.
#  Output: All Services.
#  Author: Alia Tarek.

  def  show_services
    @services = Service.all
    @markers = Gmaps4rails.build_markers(@services) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
    render :json => @markers
  end


  # Definition: Gets all Services in the db and shows them on the map.
  # Input: Services Table.
  # Output: All Services.
  # Author: Alia Tarek.

  def show_services
    @services = Service.all
    @markers = Gmaps4rails.build_markers(@services) do |services, marker| 
      marker.lat services.latitude
      marker.lng services.longitude 
      marker.infowindow services.name 
      marker.picture({ 
        "url" => "http://rideforclimate.com/nukes/all/images/green.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


  # Defintion: Gets all merged startups in the db and shows them on the map.
  # Input: Startup Table.
  # Output: Merged Startups.
  # Author: Alia Tarek.

  def  show_merged
    @merged = Startup.where(:joint_ventures != "")
    @markers = Gmaps4rails.build_markers(@merged) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all launched startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Launched Startups.
#  Author: Alia Tarek.

  def  show_launched
    @launched = Startup.where(:launch_status => true)  
    @markers = Gmaps4rails.build_markers(@launched) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png", 
        "width" => 32, 
        "height" => 32})      
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all not yet launched in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Not yet launched Startups.
#  Author: Alia Tarek.

  def  show_not_launched
    @not_launched = Startup.where(:launch_status => false)
    @markers = Gmaps4rails.build_markers(@not_launched) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({ 
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all online startups in the db and shows them on the map.
#  Input: Startup Table.
#  tput: Online Startups.
#  Author: Alia Tarek.

  def  show_online
    @online = Startup.where(:online_status => true)
    @markers = Gmaps4rails.build_markers(@online) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end


#  Defintion: Gets all offline startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Onffline Startups.
#  Author: Alia Tarek.

  def  show_offline
    @offline = Startup.where(:online_status => false)
    @markers = Gmaps4rails.build_markers(@offline) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png", 
        "width" => 32, 
        "height" => 32})      
    end
    render :template => 'maps/index'
  end


end
    render :json => @markers
  end

  def  create
    render :template => 'maps/index'
  end
end