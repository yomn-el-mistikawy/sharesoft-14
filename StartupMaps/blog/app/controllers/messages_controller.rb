class MessagesController < ApplicationController

  # Definition: Shows messages ordered in descending order.
  # Input: Current_entity.
  # Output: Void.
  # Author: Sarah Fathallah. 

  def index
    @entity = current_entity
    @messages = Message.order("created_at desc")
    respond_to do |format|
      format.html
      format.json {render json: @messages}
    end
  end


  # Definition: Shows desired message.
  # Input: Current entity.
  # Output: Void.
  # Author: Sarah Fathallah. 

  def show 
    @message = Message.find(params[:id])
    @entity = current_entity
    if (@entity.email == @message.sender) || (@entity.email == @message.recepient)
    else
      respond_to do |format|
        format.html {redirect_to :action => :index, notice: 'No message found'}
        format.json {render json: @message.errors, status: :unprocessable_entity}
      end
    end
  end


  # Definition: Creates a new message.
  # Input: Void.
  # Output: Void.
  # Author: Sarah Fathallah. 

  def new
    @message = Message.new
  end


  # Definition: Creates a new message.
  # Input: Recepient email, subject, body and current entity.
  # Output: Enters message in database.
  # Author: Sarah Fathallah. 

  def create
    @entity = Entity.find_by_email(params[:message][:recepient])
    @message = Message.new(params[:message])
    @message.sender = current_entity.email
    respond_to do |format| 
      if (@entity != nil and @message.recepient == @entity.email)
       @message.save
       format.html {redirect_to :action => :index, notice: 'Message has been sent.'}
       format.json {render json: @messages}
      else
        format.html {redirect_to :action => :new, notice: 'Error: Entity not found.'}
        format.json {render json: @message.errors, status: :unprocessable_entity}
      end
    end
  end
  


  # Definition: Destroys desired message.
  # Input: Message id.
  # Output: Deletes record.
  # Author: Sarah Fathallah. 

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_to do |format|
      format.html {redirect_to :back}
      format.json {head :no_content}
    end
  end
end