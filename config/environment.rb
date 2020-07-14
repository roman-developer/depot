# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp

  # Check Gmail through other email platforms: https://support.google.com/mail/answer/7126229?hl=es
  # user_name should be changed by your email account
  # password should be changed by the password used in your account
  config.action_mailer.smtp_settings = {
    address: "smpt.gmail.com",
    port: 587,
    authentication: "plain",
    user_name: "dave",
    password: "secret",
    enable_starttls_auto: true
  }
end