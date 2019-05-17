module JwtAuthentication
  def invalid_authentication
    render json: { error: 'Invalid token' }, status: :unauthorized
  end
end