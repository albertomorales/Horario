# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_schedule_session',
  :secret      => 'b315f9231a5c856120ad7369d7527f6d585ed4f496a9e5bf467b35636436321df59068cf83e17f57a14a71b32cd02ea75260e51595b9d4caa7ff3252498d02b6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
