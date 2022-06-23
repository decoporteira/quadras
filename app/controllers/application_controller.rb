class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  layout :determine_layout

  private

  def determine_layout
    if current_admin
      "application"
    else
      "login"
    end
  end
end
