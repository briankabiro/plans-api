include JwtAuthentication
include JsonWebToken

class ApplicationController < ActionController::API
  def authorize
    payload = JsonWebToken.decode(request.headers["authorization"])
    if payload
      return true 
    else
      invalid_authentication
    end
  end
end
