class ProshopsController < ApplicationController
  before_action :set_proshop, only: %i[ show edit update destroy ]

  # GET /proshops or /proshops.json
  def index
    @proshops = Proshop.all
  end

  # GET /proshops/1 or /proshops/1.json
  def show
  end

  # GET /proshops/new
  def new
    @proshop = Proshop.new
  end

  # GET /proshops/1/edit
  def edit
  end

  # POST /proshops or /proshops.json
  def create
    @proshop = Proshop.new(proshop_params)

    respond_to do |format|
      if @proshop.save
        format.html { redirect_to proshop_url(@proshop), notice: "Proshop was successfully created." }
        format.json { render :show, status: :created, location: @proshop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proshops/1 or /proshops/1.json
  def update
    respond_to do |format|
      if @proshop.update(proshop_params)
        format.html { redirect_to proshop_url(@proshop), notice: "Proshop was successfully updated." }
        format.json { render :show, status: :ok, location: @proshop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proshops/1 or /proshops/1.json
  def destroy
    @proshop.destroy

    respond_to do |format|
      format.html { redirect_to proshops_url, notice: "Proshop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proshop
      @proshop = Proshop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proshop_params
      params.require(:proshop).permit(:name, :city, :address, :phone, :website)
    end
end
