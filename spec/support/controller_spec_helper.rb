module ControllerSpecHelper
  def token_generator
    JsonWebToken.encode
  end

  def valid_headers
    {
      "Authorization" => token_generator
    }
  end

  def invalid_headers
    {
      "Authorization" => nil,
      "Content-Type" => "application/json"
    }
  end
end