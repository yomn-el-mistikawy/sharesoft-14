class StartupsController < ApplicationController



def index
  end


  def show
  #Loop on the pending requests with the response null
  #Input is the two columns of requested and response
  #output is a list of all the pending requests of response null
  #Authored by Ziad Abdelkader
  	@requests = Send_merge_requests.where(:reciever_id=> 2 , :response => nil)
  end

  

def accept
	#Not working, I dont know how to update the database
	#@sender_id= Send_merge_requests.find(params[:request])
	#@sender_id= Send_merge_requests.update(:response => 1)

	end

	def reject
			
         #Not working, I dont know how to update the database
			#@sender_id= Send_merge_requests.find(params[:request])

			#@sender_id= Send_merge_requests.where(:requested => 2, :requester => @requester ).update(:response => 0)
	end

end
