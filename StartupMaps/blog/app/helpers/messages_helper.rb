module MessagesHelper
  def marked_as_read(message)
    if @message.read != 1 
      @message.read = 1
      @message.save 
    end
  end
end