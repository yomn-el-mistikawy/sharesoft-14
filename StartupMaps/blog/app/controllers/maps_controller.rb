class MapsController < ApplicationController

# Definition: All records in Startup which do not have an empty string
# in joint_ventures are stored in @merged.
# Input: Table Startup.
# Output: List of merged entities.
# Author: Heba Abdelfattah.

	def show_merged
		@merged = Startup.where(:joint_ventures != "")
	end
end