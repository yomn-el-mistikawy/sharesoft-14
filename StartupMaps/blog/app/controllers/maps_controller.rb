class MapsController < ApplicationController
def create @Map_Marker = Map.new(Map_Marker) 
@Map_Marker.save redirect_to @Map_Marker
end
end
