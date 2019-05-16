require './lib/json_web_token.rb'

class ApplicationController < ActionController::API
  def is_admin?
    current_user.is_admin?
  end
end
