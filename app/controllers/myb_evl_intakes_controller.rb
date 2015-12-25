class MybEvlIntakesController < ApplicationController
  before_action :set_myb_evl_intake, only: [:show, :edit, :update, :destroy]

  # GET /myb_evl_intakes
  # GET /myb_evl_intakes.json
  def index
    @myb_evl_intakes = MybEvlIntake.all
  end

  # GET /myb_evl_intakes/1
  # GET /myb_evl_intakes/1.json
  def show
  end

  # GET /myb_evl_intakes/new
  def new
    @myb_evl_intake = MybEvlIntake.new
  end

  # GET /myb_evl_intakes/1/edit
  def edit
  end

  # POST /myb_evl_intakes
  # POST /myb_evl_intakes.json
  def create
    @myb_evl_intake = MybEvlIntake.new(myb_evl_intake_params)

    respond_to do |format|
      if @myb_evl_intake.save
        format.html { redirect_to @myb_evl_intake, notice: 'Myb evl intake was successfully created.' }
        format.json { render :show, status: :created, location: @myb_evl_intake }
      else
        format.html { render :new }
        format.json { render json: @myb_evl_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_evl_intakes/1
  # PATCH/PUT /myb_evl_intakes/1.json
  def update
    respond_to do |format|
      if @myb_evl_intake.update(myb_evl_intake_params)
        format.html { redirect_to @myb_evl_intake, notice: 'Myb evl intake was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_evl_intake }
      else
        format.html { render :edit }
        format.json { render json: @myb_evl_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_evl_intakes/1
  # DELETE /myb_evl_intakes/1.json
  def destroy
    @myb_evl_intake.destroy
    respond_to do |format|
      format.html { redirect_to myb_evl_intakes_url, notice: 'Myb evl intake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_evl_intake
      @myb_evl_intake = MybEvlIntake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_evl_intake_params
      params.require(:myb_evl_intake).permit(:Solver_id, :Start_time, :Duration_min, :Result, :Evl_id)
    end
end
