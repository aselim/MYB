class MybPadAccountsController < ApplicationController
  before_action :set_myb_pad_account, only: [:show, :edit, :update, :destroy]

  # GET /myb_pad_accounts
  # GET /myb_pad_accounts.json
  def index
    @myb_pad_accounts = MybPadAccount.all
  end

  # GET /myb_pad_accounts/1
  # GET /myb_pad_accounts/1.json
  def show
  end

  # GET /myb_pad_accounts/new
  def new
    @myb_pad_account = MybPadAccount.new
  end

  # GET /myb_pad_accounts/1/edit
  def edit
  end

  # POST /myb_pad_accounts
  # POST /myb_pad_accounts.json
  def create
    @myb_pad_account = MybPadAccount.new(myb_pad_account_params)

    respond_to do |format|
      if @myb_pad_account.save
        format.html { redirect_to @myb_pad_account, notice: 'Myb pad account was successfully created.' }
        format.json { render :show, status: :created, location: @myb_pad_account }
      else
        format.html { render :new }
        format.json { render json: @myb_pad_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myb_pad_accounts/1
  # PATCH/PUT /myb_pad_accounts/1.json
  def update
    respond_to do |format|
      if @myb_pad_account.update(myb_pad_account_params)
        format.html { redirect_to @myb_pad_account, notice: 'Myb pad account was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb_pad_account }
      else
        format.html { render :edit }
        format.json { render json: @myb_pad_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myb_pad_accounts/1
  # DELETE /myb_pad_accounts/1.json
  def destroy
    @myb_pad_account.destroy
    respond_to do |format|
      format.html { redirect_to myb_pad_accounts_url, notice: 'Myb pad account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb_pad_account
      @myb_pad_account = MybPadAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_pad_account_params
      params.require(:myb_pad_account).permit(:Username, :Password)
    end
end
