class MapsController < ApplicationController
	def  show_startups
    @startups = Test.all
    @markers = Gmaps4rails.build_markers(@startups) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.joint_ventures 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end
    render :template => 'maps/index'
  end
end
