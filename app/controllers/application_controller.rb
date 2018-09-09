class ApplicationController < ActionController::API
  before_action :authenticate

  private
  def authenticate
    token = request.headers['Authorization'].split(' ')[1]
    decoded_payload = decode_token(token)
    @current_user = Truck.find(decoded_payload['user_id'])
  rescue JWT::VerificationError
    render json: { success: false }, status: 401
  end

  def current_user
    @current_user ||= authenticate
  end

  def hmac_secret
    'clave_secreta'
  end

  def generate_token(user)
    payload = { user_id: user.id }
    JWT.encode payload, hmac_secret, 'HS256'
  end

  def decode_token(token)
    decoded = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
    decoded[0]
  end
end
