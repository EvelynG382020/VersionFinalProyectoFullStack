class UserNotifierMailer < ApplicationMailer
    

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(email)
    @email = email
    mail( :to => @email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
