class UserMailer < ActionMailer::Base
   default from: "from@example.com"

  default from: 'notifications@example.com'
 
  def welcome_email(sign_up)
    @sign_up = sign_up
    # defines the user
    @url  = 'http://example.com/login'
    # adds the url in the email
    mail(to: @sign_up.email, subject: 'Welcome to Startups!')
    # retrieves the email typed in the text box
    # subject of the email
  end
end

