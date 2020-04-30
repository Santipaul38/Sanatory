class SpeciallitiesController < ApplicationController
  before_action :set_speciallity, only: [:show, :edit, :update, :destroy]

  # GET /speciallities
  # GET /speciallities.json
  def index
    @speciallities = Speciallity.all
  end

  # GET /speciallities/1
  # GET /speciallities/1.json
  def show
  end

  # GET /speciallities/new
  def new
    @speciallity = Speciallity.new
  end

  # GET /speciallities/1/edit
  def edit
  end

  # POST /speciallities
  # POST /speciallities.json
  def create
    @speciallity = Speciallity.new(speciallity_params)

    respond_to do |format|
      if @speciallity.save
        format.html { redirect_to @speciallity, notice: 'Speciallity was successfully created.' }
        format.json { render :show, status: :created, location: @speciallity }
      else
        format.html { render :new }
        format.json { render json: @speciallity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speciallities/1
  # PATCH/PUT /speciallities/1.json
  def update
    respond_to do |format|
      if @speciallity.update(speciallity_params)
        format.html { redirect_to @speciallity, notice: 'Speciallity was successfully updated.' }
        format.json { render :show, status: :ok, location: @speciallity }
      else
        format.html { render :edit }
        format.json { render json: @speciallity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speciallities/1
  # DELETE /speciallities/1.json
  def destroy
    @speciallity.destroy
    respond_to do |format|
      format.html { redirect_to speciallities_url, notice: 'Speciallity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speciallity
      @speciallity = Speciallity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speciallity_params
      params.require(:speciallity).permit(:name, :charge)
    end
end
