class MapsController < ApplicationController
 
 #Definition: This action show the names of startups ,investors and the sevices that are in 
    #sectors agriculture,manufacturing,trading,clothing,telecommunications on the map 
    #and buid markers according to the sectors.
#Input:Sector.
#Output: Name.
#Author: Mohamed sharawy. 


  def  create
    @entities_startups = Startup.where( sector: params[:entities][:sectors] )
    @entities_investors = Investor.where( sector: params[:entities][:sectors] )
    @entities_services = Service.where( sector: params[:entities][:sectors] )


    @startups_markers = Gmaps4rails.build_markers( @entities_startups ) do |t, marker|
      marker.lat t.latitude
      marker.lng t.longitude
      marker.infowindow t.sector
    end

    @investor_markers = Gmaps4rails.build_markers( @entities_investors ) do |t, marker|
      marker.lat t.latitude
      marker.lng t.longitude
      marker.infowindow t.sector
    end

    @services_markers = Gmaps4rails.build_markers( @entities_services ) do |t, marker|
      marker.lat t.latitude
      marker.lng t.longitude
      marker.infowindow t.sector
    end

  end
end





