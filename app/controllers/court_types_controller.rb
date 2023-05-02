class CourtTypesController < ApplicationController
  before_action :set_court_type, only: %i[ show edit update destroy ]

  # GET /court_types or /court_types.json
  def index
    @court_types = CourtType.all
  end

  # GET /court_types/1 or /court_types/1.json
  def show
  end

  # GET /court_types/new
  def new
    @court_type = CourtType.new
  end

  # GET /court_types/1/edit
  def edit
  end

  # POST /court_types or /court_types.json
  def create
    @court_type = CourtType.new(court_type_params)

    respond_to do |format|
      if @court_type.save
        format.html { redirect_to court_type_url(@court_type), notice: "Court type was successfully created." }
        format.json { render :show, status: :created, location: @court_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @court_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /court_types/1 or /court_types/1.json
  def update
    respond_to do |format|
      if @court_type.update(court_type_params)
        format.html { redirect_to court_type_url(@court_type), notice: "Court type was successfully updated." }
        format.json { render :show, status: :ok, location: @court_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @court_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /court_types/1 or /court_types/1.json
  def destroy
    @court_type.destroy

    respond_to do |format|
      format.html { redirect_to court_types_url, notice: "Court type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court_type
      @court_type = CourtType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def court_type_params
      params.require(:court_type).permit(:name, :day_price, :night_price)
    end
end
