class EntitiesController < ApplicationController


	def choose_preferences
		Tag.update_pref(params[:other], params[:prefs])
	end

end

