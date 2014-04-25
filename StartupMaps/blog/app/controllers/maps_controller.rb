class MapsController < ApplicationController

  # Defintion: gets all startups and services and investors in the db and shows them on the map and
  # Then linking the markers with the startups with an image to be easily identified in the map and
  # Then putting the name or information on a box when clicking on the marker it pops up with the name,
  # The @start and @serv and @inv is the link between map_controller and the map index to be easily accessed.
  # Input: Startup, Service and Investor Table and the @start, @serv and @inv.
  # Output: the Startup, Service and Investor database and the markers linked to the startup, service and investor.
  # Author: Youssef Attaby.
  def Index
    @startups = Startup.all
    @start = Gmaps4rails.build_markers(@startups) do |startup, marker|
      marker.lat startup.latitude
      marker.lng startup.longitude
      marker.infowindow startup.name
      marker.json({link: "", current: true})
      marker.picture({
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" =>  32,
        "height" => 32})
      marker.json({ title: startup.name })
    end
    @services = Service.all
    @serv = Gmaps4rails.build_markers(@services) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
      marker.infowindow service.name
      marker.json({link: "", current: true})
      marker.picture({
        "url" => "http://rideforclimate.com/nukes/all/images/green.png",
        "width" => 32,
        "height" => 32})
      marker.json({ title: service.name })
    end
    @investors = Investor.all
    @inv = Gmaps4rails.build_markers(@investors) do |investor, marker|
      marker.lat investor.latitude
      marker.lng investor.longitude
      marker.infowindow investor.name
      marker.json({link: "", current: true})
      marker.picture({
        "url" => "http://rideforclimate.com/nukes/all/images/orange.png",
        "width" =>  32,
        "height" => 32})
      marker.json({ title: investor.name })
    end
  end
end

