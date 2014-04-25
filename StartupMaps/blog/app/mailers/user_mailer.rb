class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  default from: 'notifications@example.com'
 
  # Definition: ActionMailer that gives the order to send the email.
  # Input: Entity.
  # Output: Email.
  # Author: Omar El-Menawy


  def welcome_email(entity)
    @entity = entity
    @url  = 'http://example.com/login'
    mail(to: @entity.e_mail, subject: 'Welcome to Startups!')
  end
end
