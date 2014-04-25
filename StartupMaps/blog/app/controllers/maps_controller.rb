class MapsController < ApplicationController

# Definition: All records in Startup which do not have an empty string
# in joint_ventures are stored in @merged.
# Input: Table Startup.
# Output: List of merged entities on the map with markers.
# Author: Heba Abdelfattah.

	def show_merged
		@merged = Startup.where(:joint_ventures != "")
		@h = Gmaps4rails.build_markers(@merged) do |t, marker|
    marker.lat t.latitude
    marker.lng t.longitude
    marker.infowindow t.joint_ventures
    marker.picture({
      "url" => "http://mapicons.nicolasmollet.com/wp-content/uploads/mapicons/shape-default/color-265cb2/shapecolor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshadowstyle-dark/gradient-iphone/foodcan.png",
      "width"   => 32,
      "height"  => 32
      })
    end
	end
end
