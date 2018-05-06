Devise.setup do |config|
  # config.secret_key = '58dc87737df2432a9110a0993746036bdcd24e266d2909a7cb4c9109dd68269bbe8615d5a962610e92a00df79625cc88b6b03a2a6ae064a7fbed14bb398b4ba8'
  
  config.parent_controller = 'ActionController::Base'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
