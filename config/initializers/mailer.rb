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
config.action_mailer.raise_delivery_errors = true