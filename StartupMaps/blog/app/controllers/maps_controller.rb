class MapsController < ApplicationController

  def index

  # Defintion: gets all startups in the db and shows them on the map and then linking the markers 
  # with the startups with an image to be easily identified in the map and then putting the name or
  # information on a box when clicking on the marker it pops up with the name and also 
  # the @a is the link between this controller and the index to be easily accessed.
  # Input: Startup Table and the @a.
  # Output: the Startups database and the marker linked to the startup.
  # Author: Youssef Attaby

	  @startups = Startup.all
	  @a = Gmaps4rails.build_markers(@startups) do |startup, marker|
      marker.lat startup.latitude
      marker.lng startup.longitude
      marker.infowindow startup.name
      marker.json({link: "", current: true})
      marker.picture({
      "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
      "width" =>  32,
      "height" => 32})
      #marker.json({link: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png", current: true})
      marker.json({ title: startup.name })
    end

  # Defintion: gets all services in the db and shows them on the map and then linking the markers 
  # with the services with an image to be easily identified in the map and then putting the name or
  # information on a box when clicking on the marker it pops up with the name and also 
  # the @b is the link between this controller and the index to be easily accessed.
  # Input: Service Table and the @b.
  # Output: the Services database and the marker linked to the startup.
  # Author: Youssef Attaby

    @services = Service.all
    @b = Gmaps4rails.build_markers(@services) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
      marker.infowindow service.name
      marker.json({link: "", current: true})
      marker.picture({
      "url" => "http://rideforclimate.com/nukes/all/images/green.png",
      "width" => 32,
      "height" => 32})
      #marker.json({link: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png", current: true})
      marker.json({ title: service.name })
    end

  # Defintion: gets all investors in the db and shows them on the map and then linking the markers 
  # with the investors with an image to be easily identified in the map and then putting the name or
  # information on a box when clicking on the marker it pops up with the name and also 
  # the @c is the link between this controller and the index to be easily accessed.
  # Input: Investor Table and the @a.
  # Output: the Investors database and the marker linked to the startup.
  # Author: Youssef Attaby

    @investors = Investor.all
    @c = Gmaps4rails.build_markers(@investors) do |investor, marker|
      marker.lat investor.latitude
      marker.lng investor.longitude
      marker.infowindow investor.name
      marker.json({link: "", current: true})
      marker.picture({
      "url" => "http://rideforclimate.com/nukes/all/images/orange.png",
      "width" =>  32,
      "height" => 32})
      #marker.json({link: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png", current: true})
      marker.json({ title: investor.name })
    end
  end
end

