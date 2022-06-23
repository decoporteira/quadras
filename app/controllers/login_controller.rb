class ApplicationController < ActionController::Base
  layout "login"
  before_action :authenticate_admin!
end
