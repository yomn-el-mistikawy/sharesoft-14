class MapsController < ApplicationController
      before_action :authenticate_entity!
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
    render :json => @markers
  end

  def  create
    render :template => 'maps/index'
  end
end
