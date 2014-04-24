class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  default from: 'notifications@example.com'

  def welcome_email(sign_up)
    @entity = sign_up
    #defines the user.
    @url  = 'http://example.com/login'
    #adds the url in the email.
    mail(to: @sign_up.email, subject: 'Welcome to Startups!')
    #retrieves the email typed in the text box.
    #subject of the email.
  end

	#Definition: Sends the password retrieval email to the entity with the inputted email with the subject of the email defined.
	#Input: Entity, E-mail.
	#Output: E-mail with the existing password.
	#Author: Omar El-Menawy.
	def password_reset(entity)
  	@entity = entity
  	mail(to: @entity.e_mail, subject: 'Password Reset')
	end
end

