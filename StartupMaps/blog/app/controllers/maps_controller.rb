class MapsController < ApplicationController

def  show_startups

   # response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    #response.headers["Pragma"] = "no-cache"
    #response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"

    @startups = Startup.all
    @markers = Gmaps4rails.build_markers(@startups) do |t, marker| 
      marker.lat t.latitude 
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end

    render :json => @markers
  end


#  Defintion: Gets all Investors in the db and shows them on the map.
#  Input: Investors Table.
#  Output: All Investors.
#  Author: Alia Tarek.

  def  show_investors
    @investors = Investor.all
    @markers = Gmaps4rails.build_markers(@investors) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({ 
        "url" => "http://rideforclimate.com/nukes/all/images/orange.png",
        "width" => 32, 
        "height" => 32})
    end

    render :json => @markers
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
