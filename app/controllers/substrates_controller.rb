class SubstratesController < ApplicationController
  before_action :set_substrate, only: %i[ show edit update destroy ]

  # GET /substrates or /substrates.json
  def index
    @substrates = Substrate.all
  end

  # GET /substrates/1 or /substrates/1.json
  def show
  end

  # GET /substrates/new
  def new
    @substrate = Substrate.new
  end

  # GET /substrates/1/edit
  def edit
  end

  # POST /substrates or /substrates.json
  def create
    @substrate = Substrate.new(substrate_params)

    respond_to do |format|
      if @substrate.save
        format.html { redirect_to substrate_url(@substrate), notice: "Substrate was successfully created." }
        format.json { render :show, status: :created, location: @substrate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @substrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /substrates/1 or /substrates/1.json
  def update
    respond_to do |format|
      if @substrate.update(substrate_params)
        format.html { redirect_to substrate_url(@substrate), notice: "Substrate was successfully updated." }
        format.json { render :show, status: :ok, location: @substrate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @substrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substrates/1 or /substrates/1.json
  def destroy
    @substrate.destroy!

    respond_to do |format|
      format.html { redirect_to substrates_url, notice: "Substrate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substrate
      @substrate = Substrate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def substrate_params
      params.require(:substrate).permit(:name, :subtype)
    end
end
