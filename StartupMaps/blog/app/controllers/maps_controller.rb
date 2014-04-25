class MapsController < ApplicationController
 #Definition: this action show the names of startups ,investors and the sevices that are in 
    #sectors agriculture,manufacturing,trading,clothing,telecommunications on the map 
    #and buid markers according to the sectors.
#Input:sector.
#Output: name.
#Author: mohamed sharawy 


        def  create
                @entities = Startup.where( sector: params[:entities][:sectors] )
                @entities_I = Investor.where( sector: params[:entities][:sectors] )
                @entities_V = Service.where( sector: params[:entities][:sectors] )


                @map = Gmaps4rails.build_markers( @entities ) do |t, marker|
        	       marker.lat t.latitude
        	       marker.lng t.longitude
        	       marker.infowindow t.sector
        end

                @map_I = Gmaps4rails.build_markers( @entities_I ) do |t, marker|
        	       marker.lat t.latitude
        	       marker.lng t.longitude
        	       marker.infowindow t.sector
        end

                @map_V = Gmaps4rails.build_markers( @entities_V ) do |t, marker|
        	       marker.lat t.latitude
        	       marker.lng t.longitude
        	       marker.infowindow t.sector
        end


        end
        end
