class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: :home

  def authentication_callback
    auth = request.env['omniauth.auth']
    render json: auth.to_json
  end

  def home
    render html: current_user.as_json
  end
end
