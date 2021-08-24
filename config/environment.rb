# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
    :password => ENV['SENDGRIDKEY_SECRET'], # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'fullstackbroker.herokuapp.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
#otra forma de encriptar mis credenciales mediante credentials.yml rails
# ActionMailer::Base.smtp_settings = {
#     :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
#     :password => Rails.application.credentials.sendgrid[:access_sendgrid_key], # This is the secret sendgrid API key which was issued during API key creation
#     :domain => 'fullstackbroker.herokuapp.com',
#     :address => 'smtp.sendgrid.net',
#     :port => 587,
#     :authentication => :plain,
#     :enable_starttls_auto => true
#   }
  
