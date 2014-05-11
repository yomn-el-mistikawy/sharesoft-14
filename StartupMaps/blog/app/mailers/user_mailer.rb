class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  default from: 'notifications@example.com'
 
  # Definition: This methods takes as input an entity and retieves its email to send a creation confirmation email to the entity.
  # Input: Entity.
  # Output: Void.
  # Author: Omar El Menawy.

  def confirmation_instructions(entity)
    @entity = entity
    @url  = 'http://example.com/login'
    mail(to: @entity.email, subject: 'Welcome to Startups!')
  end


  # Definition: This methods takes as input an entity and retieves its email to send a reset password email to the entity.
  # Input: Entity.
  # Output: Void.
  # Author: Omar El Menawy.

  def reset_password_instructions(entity)
    @entity = entity
    mail :to => sign_up.email, :subject => "Password Reset"
  end


  # Definition: This methods takes as input an entity and retieves its email to send a unlock account email to the entity.
  # Input: Entity.
  # Output: Void.
  # Author: Omar El Menawy.

  def unlock_instructions(entity)
    @entity = entity
    @url  = 'http://example.com/login'
    mail(to: @entity.email, subject: 'Unlock Instructions')
  end
end
