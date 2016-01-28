class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]



  # GET /places
  # GET /places.json
  def index

    params = {
      term: Place.get_current_time,
      sort: 1,
      limit: 20
    }
    coordinates = {
      latitude: session[:y_lat],
      longitude: session[:y_long]
    }
    # @lists ||= Yelp.client.search('Los Angeles Downtown', params)
    @lists = Yelp.client.search_by_coordinates(coordinates, params)
    @places ||= @lists.businesses
    puts "----------------------------------------------------"
    puts coordinates
    puts request.ip + 'local proxy ip'
    puts request.remote_ip + 'client ip'
    puts "----------------------------------------------------"
    # @places = Place.all
  end

  def show_coordinate #set_coordinate_session
    session[:y_lat] = params[:y_lat]
    session[:y_long] = params[:y_long]

    respond_to do |format|
      format.json {render json: {lists: @lists, places: @places}, status: 200}
    end
  end

  # GET /places/1
  # GET /places/1.json
  def show
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:index, :show, :new, :edit)
    end
end
