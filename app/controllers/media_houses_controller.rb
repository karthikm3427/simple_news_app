class MediaHousesController < ApplicationController
  before_action :set_media_house, only: [:show, :edit, :update, :destroy]

  # GET /media_houses
  # GET /media_houses.json
  def index
    @media_houses = MediaHouse.all
  end

  # GET /media_houses/1
  # GET /media_houses/1.json
  def show
  end

  # GET /media_houses/new
  def new
    @media_house = MediaHouse.new
  end

  # GET /media_houses/1/edit
  def edit
  end

  # POST /media_houses
  # POST /media_houses.json
  def create
    @media_house = MediaHouse.new(media_house_params)

    respond_to do |format|
      if @media_house.save
        format.html { redirect_to @media_house, notice: 'Media house was successfully created.' }
        format.json { render :show, status: :created, location: @media_house }
      else
        format.html { render :new }
        format.json { render json: @media_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_houses/1
  # PATCH/PUT /media_houses/1.json
  def update
    respond_to do |format|
      if @media_house.update(media_house_params)
        format.html { redirect_to @media_house, notice: 'Media house was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_house }
      else
        format.html { render :edit }
        format.json { render json: @media_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_houses/1
  # DELETE /media_houses/1.json
  def destroy
    @media_house.destroy
    respond_to do |format|
      format.html { redirect_to media_houses_url, notice: 'Media house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_house
      @media_house = MediaHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_house_params
      params.require(:media_house).permit(:name,:country_id, :state_id)
    end
end
