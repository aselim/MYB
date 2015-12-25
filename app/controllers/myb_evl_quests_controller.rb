class MybEvlQuestsController < ApplicationController
  before_action :set_myb_evl_quest, only: [:show, :edit, :update, :destroy]

  # GET /myb_evl_quests
  # GET /myb_evl_quests.json
  def index
    @myb_evl_quests = MybEvlQuest.all
  end

  # GET /myb_evl_quests/1
  # GET /myb_evl_quests/1.json
  def show
  end

  # GET /myb_evl_quests/new
  def new
    @myb_evl_quest = MybEvlQuest.new
  end

  # GET /myb_evl_quests/1/edit
  def edit
  end

  # POST /myb_evl_quests
  # POST /myb_evl_quests.json
  def create
    @myb_evl_quest = MybEvlQuest.new(myb_evl_quest_params)

    respond_to do |format|
      if @myb_evl_quest.save
        format.html { redirect_to @myb_evl_quest, notice: 'Myb evl quest was successfully created.' }
        format.json { render :show, status: :created, location: @myb_evl_quest }
      else
        format.html { render :new }
        format.json { render json: @myb_evl_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_evl_quests/1
  # PATCH/PUT /myb_evl_quests/1.json
  def update
    respond_to do |format|
      if @myb_evl_quest.update(myb_evl_quest_params)
        format.html { redirect_to @myb_evl_quest, notice: 'Myb evl quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_evl_quest }
      else
        format.html { render :edit }
        format.json { render json: @myb_evl_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_evl_quests/1
  # DELETE /myb_evl_quests/1.json
  def destroy
    @myb_evl_quest.destroy
    respond_to do |format|
      format.html { redirect_to myb_evl_quests_url, notice: 'Myb evl quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_evl_quest
      @myb_evl_quest = MybEvlQuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_evl_quest_params
      params.require(:myb_evl_quest).permit(:Type, :Question, :Answer, :Evl_id, :Serial)
    end
end
