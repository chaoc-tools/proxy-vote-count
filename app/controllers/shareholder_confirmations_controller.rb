class ShareholderConfirmationsController < ApplicationController
  before_action :set_shareholder_confirmation, only: [:show, :edit, :update, :destroy]

  # GET /shareholder_confirmations
  # GET /shareholder_confirmations.json
  def index
    @shareholder_confirmations = ShareholderConfirmation.all
  end

  # GET /shareholder_confirmations/1
  # GET /shareholder_confirmations/1.json
  def show
  end

  # GET /shareholder_confirmations/new
  def new
    @shareholder_confirmation = ShareholderConfirmation.new
  end

  # GET /shareholder_confirmations/1/edit
  def edit
  end

  # POST /shareholder_confirmations
  # POST /shareholder_confirmations.json
  def create
    @shareholder_confirmation = ShareholderConfirmation.new(shareholder_confirmation_params)

    respond_to do |format|
      if @shareholder_confirmation.save
        format.html { redirect_to @shareholder_confirmation, notice: "Thanks! You'll receive an email notification once we've confirmed that you are a shareholder." }
        format.json { render :show, status: :created, location: @shareholder_confirmation }
      else
        format.html { render :new }
        format.json { render json: @shareholder_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shareholder_confirmations/1
  # PATCH/PUT /shareholder_confirmations/1.json
  def update
    respond_to do |format|
      if @shareholder_confirmation.update(shareholder_confirmation_params)
        format.html { redirect_to @shareholder_confirmation, notice: 'Shareholder confirmation was successfully updated.' }
        format.json { render :show, status: :ok, location: @shareholder_confirmation }
      else
        format.html { render :edit }
        format.json { render json: @shareholder_confirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareholder_confirmations/1
  # DELETE /shareholder_confirmations/1.json
  def destroy
    @shareholder_confirmation.destroy
    respond_to do |format|
      format.html { redirect_to shareholder_confirmations_url, notice: 'Shareholder confirmation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shareholder_confirmation
      @shareholder_confirmation = ShareholderConfirmation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shareholder_confirmation_params
      params.require(:shareholder_confirmation).permit(:sh_firstname, :sh_mi, :sh_last_name, :sh_bldg, :notes)
    end
end
