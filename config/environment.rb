# Load the rails application
require File.expand_path('../application', __FILE__)
# Initialize the rails application
Klairvoyantsite::Application.initialize!

config.action_mailer.delivery_method = :smtp
ActionMailer::Base.smtp_settings= {
    :enable_starttls_auto=> true,
    :address	=>"smtp.gmail.com",
    :port 		=>587,
    :domain =>"klairvoyant.com",
    :user_name=> "contact@klairvoyant.com",
    :password =>"cochinkerala",
    :authentication=>"plain"

}


