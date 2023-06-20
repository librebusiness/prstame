class ProofOfAddressesController < ApplicationController
  before_action :set_proof_of_address, only: %i[ show edit update destroy ]

  # GET /proof_of_addresses or /proof_of_addresses.json
  def index
    @proof_of_addresses = ProofOfAddress.all
  end

  # GET /proof_of_addresses/1 or /proof_of_addresses/1.json
  def show
  end

  # GET /proof_of_addresses/new
  def new
    @proof_of_address = ProofOfAddress.new
  end

  # GET /proof_of_addresses/1/edit
  def edit
  end

  # POST /proof_of_addresses or /proof_of_addresses.json
  def create
    @proof_of_address = ProofOfAddress.new(proof_of_address_params)

    respond_to do |format|
      if @proof_of_address.save
        format.html { redirect_to proof_of_address_url(@proof_of_address), notice: "Proof of address was successfully created." }
        format.json { render :show, status: :created, location: @proof_of_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proof_of_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proof_of_addresses/1 or /proof_of_addresses/1.json
  def update
    respond_to do |format|
      if @proof_of_address.update(proof_of_address_params)
        format.html { redirect_to proof_of_address_url(@proof_of_address), notice: "Proof of address was successfully updated." }
        format.json { render :show, status: :ok, location: @proof_of_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proof_of_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proof_of_addresses/1 or /proof_of_addresses/1.json
  def destroy
    @proof_of_address.destroy

    respond_to do |format|
      format.html { redirect_to proof_of_addresses_url, notice: "Proof of address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proof_of_address
      @proof_of_address = ProofOfAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proof_of_address_params
      params.require(:proof_of_address).permit(:user_id, :document, :status)
    end
end
