class MapsController < ApplicationController


#  Defintion: Gets all startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Online Startups.
#  Author: Alia Tarek.

  def  show_startups

if params[:sector] == "please select a sector..."
    @startups = Table.all
  end
 if  params[:sector ]!= "please select a sector..." 
   @startups = Table.where( sector: params[:sector] )
 end
     @markers = Gmaps4rails.build_markers(@startups) do |t, marker| 
      marker.lat t.latitude 
      marker.lng t.longitude 
      marker.infowindow t.joint_ventures 
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
if params[:sector] == "please select a sector..."
    @investors = Table.all
  end
 if  params[:sector ]!= "please select a sector..." 
   @investors = Table.where( sector: params[:sector] )
 end
    @markers = Gmaps4rails.build_markers(@investors) do |t, marker| 
      marker.lat t.latitude + 10
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
  
if params[:sector] == "please select a sector..."
    @services = Table.all
  end
 if  params[:sector ]!= "please select a sector..." 
   @services = Table.where( sector: params[:sector] )
 end
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


  # Defintion: Gets all merged startups in the db and shows them on the map.
  # Input: Startup Table.
  # Output: Merged Startups.
  # Author: Alia Tarek.

  def  show_merged

if params[:sector] == "please select a sector..."
    @merged = Table.where(:joint_ventures != "")
  end
 if  params[:sector ]!= "please select a sector..." 
   @merged = Table.where( sector: params[:sector]).where(:joint_ventures != "")
 end
    @markers = Gmaps4rails.build_markers(@merged) do |t, marker| 
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


#  Defintion: Gets all launched startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Launched Startups.
#  Author: Alia Tarek.

  def  show_launched
    if params[:sector] == "please select a sector..."
      @launched = Table.where(:launch_status => true) 
  end
 if  params[:sector ]!= "please select a sector..." 
   @launched = Table.where( sector: params[:sector]).where(:launch_status == true)
 end
  
    @markers = Gmaps4rails.build_markers(@launched) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/pink.png", 
        "width" => 32, 
        "height" => 32})      
    end
    render :json => @markers
  end


#  Defintion: Gets all not yet launched in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Not yet launched Startups.
#  Author: Alia Tarek.

  def  show_not_launched
       if params[:sector] == "please select a sector..."
     @not_launched = Table.where(:launch_status => false)
  end
 if  params[:sector ]!= "please select a sector..." 
   @not_launched = Table.where( sector: params[:sector]).where(:launch_status == false)
 end

    @markers = Gmaps4rails.build_markers(@not_launched) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({ 
        "url" => "http://rideforclimate.com/nukes/all/images/white.png",
        "width" => 32, 
        "height" => 32})
    end
    render :json => @markers
  end


#  Defintion: Gets all online startups in the db and shows them on the map.
#  Input: Startup Table.
#  tput: Online Startups.
#  Author: Alia Tarek.

  def  show_online
    if params[:sector] == "please select a sector..."
    @online = Table.where(:online_status => true)
  end
 if  params[:sector ]!= "please select a sector..." 

   @online = Table.where(sector: params[:sector]).where(:online_status == true)
 end

    @markers = Gmaps4rails.build_markers(@online) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/yellow.png",
        "width" => 32, 
        "height" => 32})
    end
   
    render :json => @markers
  end


#  Defintion: Gets all offline startups in the db and shows them on the map.
#  Input: Startup Table.
#  Output: Onffline Startups.
#  Author: Alia Tarek.

  def  show_offline
  if params[:sector] == "please select a sector..."
   @offline = Table.where(:online_status => false)
  end
 if  params[:sector ]!= "please select a sector..." 
   @offline = Table.where(sector: params[:sector]).where(:online_status == false)
 end
   @markers = Gmaps4rails.build_markers(@offline) do |t, marker| 
      marker.lat t.latitude
      marker.lng t.longitude 
      marker.infowindow t.name 
      marker.picture({  
        "url" => "http://rideforclimate.com/nukes/all/images/red.png", 
        "width" => 32, 
        "height" => 32})      
    end

    render :json => @markers
  end

def create
      render :template => 'maps/index'
end
end
