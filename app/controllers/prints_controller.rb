class PrintsController < ApplicationController
  before_action :set_print, only: %i[ show edit update destroy ]

  # GET /prints or /prints.json
  def index
    @prints = Print.all.sort_by{|print|
      print.photo.name 
    }
  end

  # GET /prints/1 or /prints/1.json
  def show
  end

  # GET /prints/new
  def new
    @print = Print.new
    @photos = Photo.all.order('name asc')
    @substrates = Substrate.all.order('name asc')
    @sizes = Size.all.order('name asc')
    @frames = Frame.all.order('name asc')
    @mats = Mat.all.order('name asc')
  end

  # GET /prints/1/edit
  def edit
  end

  # POST /prints or /prints.json
  def create
    @print = Print.new(print_params)
    @print.totalCost = @print.cost * @print.count
    @print.totalCost += @print.frameCost if @print.frameCost
    @print.totalCost += @print.matCost if @print.matCost

    respond_to do |format|
      if @print.save
        format.html { redirect_to print_url(@print), notice: "Print was successfully created." }
        format.json { render :show, status: :created, location: @print }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prints/1 or /prints/1.json
  def update
    respond_to do |format|
      if @print.update(print_params)
        format.html { redirect_to print_url(@print), notice: "Print was successfully updated." }
        format.json { render :show, status: :ok, location: @print }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prints/1 or /prints/1.json
  def destroy
    @print.destroy!

    respond_to do |format|
      format.html { redirect_to prints_url, notice: "Print was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_print
    @print = Print.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def print_params
    params.require(:print).permit(:photo_id, :substrate_id, :size_id, :count, :cost, :frame_id, :mat_id, :frameCost, :matCost)
  end
end
