class SchedulersController < ApplicationController
  before_action :set_scheduler, only: %i[ show edit update destroy ]
  before_action :get_clients, only: [:new, :edit]
  before_action :get_courts, only: [:new, :edit]
  # GET /schedulers or /schedulers.json
  def index
    @schedulers = Scheduler.all
  end

  # GET /schedulers/1 or /schedulers/1.json
  def show
  end

  # GET /schedulers/new
  def new
    @scheduler = Scheduler.new
  end

  # GET /schedulers/1/edit
  def edit
  end

  # POST /schedulers or /schedulers.json
  def create
    @scheduler = Scheduler.new(scheduler_params)

    respond_to do |format|
      if @scheduler.save
        format.html { redirect_to scheduler_url(@scheduler), notice: "Scheduler was successfully created." }
        format.json { render :show, status: :created, location: @scheduler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedulers/1 or /schedulers/1.json
  def update
    respond_to do |format|
      if @scheduler.update(scheduler_params)
        format.html { redirect_to scheduler_url(@scheduler), notice: "Scheduler was successfully updated." }
        format.json { render :show, status: :ok, location: @scheduler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedulers/1 or /schedulers/1.json
  def destroy
    @scheduler.destroy

    respond_to do |format|
      format.html { redirect_to schedulers_url, notice: "Scheduler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_scheduler
    @scheduler = Scheduler.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def scheduler_params
    params.require(:scheduler).permit(:status, :date, :start_time, :end_time, :client_id, :court_id)
  end

  def get_clients
    @clients = Client.all
  end

  def get_courts
    @courts = Court.all
  end
end
