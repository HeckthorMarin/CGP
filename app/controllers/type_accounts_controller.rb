class TypeAccountsController < ApplicationController
  before_action :set_type_account, only: [:show, :edit, :update, :destroy]

  # GET /type_accounts
  # GET /type_accounts.json
  def index
    @type_accounts = TypeAccount.all
  end

  # GET /type_accounts/1
  # GET /type_accounts/1.json
  def show
  end

  # GET /type_accounts/new
  def new
    @type_account = TypeAccount.new
  end

  # GET /type_accounts/1/edit
  def edit
  end

  # POST /type_accounts
  # POST /type_accounts.json
  def create
    @type_account = TypeAccount.new(type_account_params)

    respond_to do |format|
      if @type_account.save
        format.html { redirect_to @type_account, notice: 'Type account was successfully created.' }
        format.json { render :show, status: :created, location: @type_account }
      else
        format.html { render :new }
        format.json { render json: @type_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_accounts/1
  # PATCH/PUT /type_accounts/1.json
  def update
    respond_to do |format|
      if @type_account.update(type_account_params)
        format.html { redirect_to @type_account, notice: 'Type account was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_account }
      else
        format.html { render :edit }
        format.json { render json: @type_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_accounts/1
  # DELETE /type_accounts/1.json
  def destroy
    @type_account.destroy
    respond_to do |format|
      format.html { redirect_to type_accounts_url, notice: 'Type account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_account
      @type_account = TypeAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_account_params
      params.require(:type_account).permit(:name)
    end
end
