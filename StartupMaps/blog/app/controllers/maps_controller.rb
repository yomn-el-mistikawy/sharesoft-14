class MapsController < ApplicationController
def create
@entities_I = User.where(sector: params[:investors][:sectors])
@entities_S = User.where(sector: params[:startups][:sectors])
@entities_V = User.where(sector: params[:services][:sectors])


@map = Gmaps4rails.build_markers(@entities_I) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.sector

@map = Gmaps4rails.build_markers(@entities_S) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.sector

@map = Gmaps4rails.build_markers(@entities_V) do |t, marker|
        	marker.lat t.latitude
        	marker.lng t.longitude
        	marker.infowindow t.sector

end

end
