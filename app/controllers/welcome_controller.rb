class WelcomeController < ApplicationController
  before_action :get_scheduler
  before_action :get_court
  before_action :get_hour

  def index
    date = params[:date]
    @date = date ? date : Date.today
  end

  private

  def get_scheduler
    @schedulers = Scheduler.all
  end

  def get_court
    @courts = Court.all
  end

  def get_hour
    @hours = Hour.all
  end
end
