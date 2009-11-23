# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CANADA_session',
  :secret      => 'e9abd09c15554616a3a9b657d5e04d4f8420f60b481a7abc0697649477b88ad82905f2a341ffaa5357f1ce52bce09d47465373b5e8a6bd2b213b55cb47c487ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
