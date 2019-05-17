require 'jwt'

module JsonWebToken
  HMAC_SECRET = Rails.application.secrets.secret_key_base

  def self.encode(payload='admin')
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(token)
    JWT.decode(token, HMAC_SECRET)
  rescue JWT::ExpiredSignature, JWT::DecodeError
    false
  end
end