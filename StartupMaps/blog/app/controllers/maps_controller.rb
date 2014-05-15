class MapsController < ApplicationController
# Defintion: Gets all online startups in the db and shows them on the map.
# Input: Startup Table.
# Output: Online Startups.
# Author: Alia Tarek.

  def show_online
    if params[:sector] == "please select a sector..."
      @online = Startup.where(:online_status => true)
    end
    if  params[:sector ]!= "please select a sector..." 
      @online = Startup.where(sector: params[:sector]).where(:online_status == true)
    end
    @markers = Gmaps4rails.build_markers(@online) do |online, marker| 
      marker.lat online.latitude
      marker.lng online.longitude 
      marker.infowindow online.name  
      marker.picture({
        "url" => "http://rideforclimate.com/nukes/all/images/blue.png",
        "width" => 32, 
        "height" => 32})
    end   
    render :json => @markers
  end


# Defintion: Gets all offline startups in the db and shows them on the map.
# Input: Startup Table.
# Output: Onffline Startups.
# Author: Alia Tarek.

  def show_offline
    if params[:sector] == "please select a sector..."
      @offline = Startup.where(:online_status => false)
    end
    if params[:sector] != "please select a sector..." 
      @offline = Startup.where(sector: params[:sector]).where(:online_status == false)
    end
    @markers = Gmaps4rails.build_markers(@offline) do |offline, marker| 
      marker.lat offline.latitude
      marker.lng offline.longitude 
      marker.infowindow offline.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/red.png", 
        "width" => 32, 
        "height" => 32})      
    end
    render :json => @markers
  end


# Defintion: Gets all Investors in the db and shows them on the map.
# Input: Investors Table.
# Output: All Investors.
# Author: Alia Tarek.

  def show_investors
    if params[:sector] == "please select a sector..."
      @investors = Investor.all
    end
    if params[:sector] != "please select a sector..." 
      @investors = Investor.where(sector: params[:sector])
    end
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


#  Defintion: Gets all Services in the db and shows them on the map.
#  Input: Services Table.
#  Output: All Services.
#  Author: Alia Tarek.

  def show_services
    if params[:sector] == "please select a sector..."
      @services = Service.all
    end
    if params[:sector] != "please select a sector..." 
      @services = Service.where(sector: params[:sector])
    end
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


  # Defintion: Gets all merged startups in the db and shows them on the map.
  # Input: Startup Table.
  # Output: Merged Startups.
  # Author: Alia Tarek.

  def show_merged
    if params[:sector] == "please select a sector..."
      @merged = Startup.where(:joint_ventures != "")
    end
    if params[:sector ] != "please select a sector..." 
      @merged = Startup.where( sector: params[:sector]).where(:joint_ventures != "")
    end
    @markers = Gmaps4rails.build_markers(@merged) do |joint, marker| 
      marker.lat joint.latitude
      marker.lng joint.longitude 
      marker.infowindow (joint.name + " merged with:" + joint.joint_ventures)
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/yellow.png",
        "width" => 32, 
        "height" => 32})
    end
    render :json => @markers
  end
end