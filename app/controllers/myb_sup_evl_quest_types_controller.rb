class MybSupEvlQuestTypesController < ApplicationController
  before_action :set_myb_sup_evl_quest_type, only: [:show, :edit, :update, :destroy]

  # GET /myb_sup_evl_quest_types
  # GET /myb_sup_evl_quest_types.json
  def index
    @myb_sup_evl_quest_types = MybSupEvlQuestType.all
  end

  # GET /myb_sup_evl_quest_types/1
  # GET /myb_sup_evl_quest_types/1.json
  def show
  end

  # GET /myb_sup_evl_quest_types/new
  def new
    @myb_sup_evl_quest_type = MybSupEvlQuestType.new
  end

  # GET /myb_sup_evl_quest_types/1/edit
  def edit
  end

  # POST /myb_sup_evl_quest_types
  # POST /myb_sup_evl_quest_types.json
  def create
    @myb_sup_evl_quest_type = MybSupEvlQuestType.new(myb_sup_evl_quest_type_params)

    respond_to do |format|
      if @myb_sup_evl_quest_type.save
        format.html { redirect_to @myb_sup_evl_quest_type, notice: 'Myb sup evl quest type was successfully created.' }
        format.json { render :show, status: :created, location: @myb_sup_evl_quest_type }
      else
        format.html { render :new }
        format.json { render json: @myb_sup_evl_quest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_sup_evl_quest_types/1
  # PATCH/PUT /myb_sup_evl_quest_types/1.json
  def update
    respond_to do |format|
      if @myb_sup_evl_quest_type.update(myb_sup_evl_quest_type_params)
        format.html { redirect_to @myb_sup_evl_quest_type, notice: 'Myb sup evl quest type was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_sup_evl_quest_type }
      else
        format.html { render :edit }
        format.json { render json: @myb_sup_evl_quest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_sup_evl_quest_types/1
  # DELETE /myb_sup_evl_quest_types/1.json
  def destroy
    @myb_sup_evl_quest_type.destroy
    respond_to do |format|
      format.html { redirect_to myb_sup_evl_quest_types_url, notice: 'Myb sup evl quest type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_sup_evl_quest_type
      @myb_sup_evl_quest_type = MybSupEvlQuestType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_sup_evl_quest_type_params
      params.require(:myb_sup_evl_quest_type).permit(:Type)
    end
end
