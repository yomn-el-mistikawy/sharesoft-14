module MessagesHelper

	# Definition: Checks if the message if read or not.
  # Input: Message.
  # Output: If read marks at read.
  # Author: Sarah Fathallah. 

  def marked_as_read(message)
    if @message.read != 1 
      @message.read = 1
      @message.save 
    end
  end
end