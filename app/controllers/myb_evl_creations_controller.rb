class MybEvlCreationsController < ApplicationController
  before_action :set_myb_evl_creation, only: [:show, :edit, :update, :destroy]

  # GET /myb_evl_creations
  # GET /myb_evl_creations.json
  def index
    @myb_evl_creations = MybEvlCreation.all
  end

  # GET /myb_evl_creations/1
  # GET /myb_evl_creations/1.json
  def show
  end

  # GET /myb_evl_creations/new
  def new
    @myb_evl_creation = MybEvlCreation.new
  end

  # GET /myb_evl_creations/1/edit
  def edit
  end

  # POST /myb_evl_creations
  # POST /myb_evl_creations.json
  def create
    @myb_evl_creation = MybEvlCreation.new(myb_evl_creation_params)

    respond_to do |format|
      if @myb_evl_creation.save
        format.html { redirect_to @myb_evl_creation, notice: 'Myb evl creation was successfully created.' }
        format.json { render :show, status: :created, location: @myb_evl_creation }
      else
        format.html { render :new }
        format.json { render json: @myb_evl_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_evl_creations/1
  # PATCH/PUT /myb_evl_creations/1.json
  def update
    respond_to do |format|
      if @myb_evl_creation.update(myb_evl_creation_params)
        format.html { redirect_to @myb_evl_creation, notice: 'Myb evl creation was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_evl_creation }
      else
        format.html { render :edit }
        format.json { render json: @myb_evl_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_evl_creations/1
  # DELETE /myb_evl_creations/1.json
  def destroy
    @myb_evl_creation.destroy
    respond_to do |format|
      format.html { redirect_to myb_evl_creations_url, notice: 'Myb evl creation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_evl_creation
      @myb_evl_creation = MybEvlCreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_evl_creation_params
      params.require(:myb_evl_creation).permit(:Name, :Author_id, :Target_User, :Serial, :Schedule, :Eval_Time_Min)
    end
end
