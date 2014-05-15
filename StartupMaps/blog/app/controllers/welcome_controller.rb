class WelcomeController < ApplicationController
	    before_action :authenticate_entity!
end

