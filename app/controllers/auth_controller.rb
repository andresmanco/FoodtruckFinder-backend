class AuthController < ApplicationController
  skip_before_action :authenticate, only: [:login]

  def login
    user = Truck.find_by(account_name: params[:account_name])
    if user && user.authenticate(params[:password])
      token = generate_token(user)
      render json: { token: token, user: { account_name: user.account_name, name: user.name}}, status: 200
    end
  end
end
