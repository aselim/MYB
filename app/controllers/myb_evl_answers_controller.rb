class MybEvlAnswersController < ApplicationController
  before_action :set_myb_evl_answer, only: [:show, :edit, :update, :destroy]

  # GET /myb_evl_answers
  # GET /myb_evl_answers.json
  def index
    @myb_evl_answers = MybEvlAnswer.all
  end

  # GET /myb_evl_answers/1
  # GET /myb_evl_answers/1.json
  def show
  end

  # GET /myb_evl_answers/new
  def new
    @myb_evl_answer = MybEvlAnswer.new
  end

  # GET /myb_evl_answers/1/edit
  def edit
  end

  # POST /myb_evl_answers
  # POST /myb_evl_answers.json
  def create
    @myb_evl_answer = MybEvlAnswer.new(myb_evl_answer_params)

    respond_to do |format|
      if @myb_evl_answer.save
        format.html { redirect_to @myb_evl_answer, notice: 'Myb evl answer was successfully created.' }
        format.json { render :show, status: :created, location: @myb_evl_answer }
      else
        format.html { render :new }
        format.json { render json: @myb_evl_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_evl_answers/1
  # PATCH/PUT /myb_evl_answers/1.json
  def update
    respond_to do |format|
      if @myb_evl_answer.update(myb_evl_answer_params)
        format.html { redirect_to @myb_evl_answer, notice: 'Myb evl answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_evl_answer }
      else
        format.html { render :edit }
        format.json { render json: @myb_evl_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_evl_answers/1
  # DELETE /myb_evl_answers/1.json
  def destroy
    @myb_evl_answer.destroy
    respond_to do |format|
      format.html { redirect_to myb_evl_answers_url, notice: 'Myb evl answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_evl_answer
      @myb_evl_answer = MybEvlAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_evl_answer_params
      params.require(:myb_evl_answer).permit(:Evl_id, :Question_id, :Answer, :Intake_id)
    end
end
