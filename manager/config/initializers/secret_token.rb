# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Manager::Application.config.secret_key_base = '72ab92840b3be42c6d163fe581e9134b9deecfe7797376186c4202f13e9144826407635d0d8f05c579f130f48487b19e5481f4a1f5b92d4843c1d05c5d76ee3a'
