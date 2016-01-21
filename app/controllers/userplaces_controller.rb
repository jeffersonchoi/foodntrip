class UserplacesController < ApplicationController
  before_action :set_userplace, only: [:show, :edit, :update, :destroy]

  # GET /userplaces
  # GET /userplaces.json
  def index
    @userplaces = Userplace.all
  end

  # GET /userplaces/1
  # GET /userplaces/1.json
  def show
  end

  # GET /userplaces/new
  def new
    @userplace = Userplace.new
  end

  # GET /userplaces/1/edit
  def edit
  end

  # POST /userplaces
  # POST /userplaces.json
  def create
    @userplace = Userplace.new(userplace_params)

    respond_to do |format|
      if @userplace.save
        format.html { redirect_to @userplace, notice: 'Userplace was successfully created.' }
        format.json { render :show, status: :created, location: @userplace }
      else
        format.html { render :new }
        format.json { render json: @userplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userplaces/1
  # PATCH/PUT /userplaces/1.json
  def update
    respond_to do |format|
      if @userplace.update(userplace_params)
        format.html { redirect_to @userplace, notice: 'Userplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @userplace }
      else
        format.html { render :edit }
        format.json { render json: @userplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userplaces/1
  # DELETE /userplaces/1.json
  def destroy
    @userplace.destroy
    respond_to do |format|
      format.html { redirect_to userplaces_url, notice: 'Userplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userplace
      @userplace = Userplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userplace_params
      params.require(:userplace).permit(:user_id, :place_id, :bookmark, :check_in, :bookmark_date, :checkin_date)
    end
end
