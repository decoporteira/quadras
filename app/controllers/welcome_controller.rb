class WelcomeController < ApplicationController
  before_action :get_scheduler
  before_action :get_court

  def index
    date = params[:date]
    court_id = params[:court_id]
    @date = date ? date : Date.today
    
  end

  private

  def get_scheduler
    @schedulers = Scheduler.all
  end

  def get_court
    @courts = Court.all
  end

end
