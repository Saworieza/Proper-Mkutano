class Advert3sController < ApplicationController
  before_action :set_advert3, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /advert3s
  # GET /advert3s.json
  def index
    @advert3s = Advert3.all
  end

  # GET /advert3s/1
  # GET /advert3s/1.json
  def show
  end

  # GET /advert3s/new
  def new
    @advert3 = Advert3.new
  end

  # GET /advert3s/1/edit
  def edit
  end

  # POST /advert3s
  # POST /advert3s.json
  def create
    @advert3 = Advert3.new(advert3_params)

    respond_to do |format|
      if @advert3.save
        format.html { redirect_to @advert3, notice: 'Advert3 was successfully created.' }
        format.json { render :show, status: :created, location: @advert3 }
      else
        format.html { render :new }
        format.json { render json: @advert3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advert3s/1
  # PATCH/PUT /advert3s/1.json
  def update
    respond_to do |format|
      if @advert3.update(advert3_params)
        format.html { redirect_to @advert3, notice: 'Advert3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert3 }
      else
        format.html { render :edit }
        format.json { render json: @advert3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advert3s/1
  # DELETE /advert3s/1.json
  def destroy
    @advert3.destroy
    respond_to do |format|
      format.html { redirect_to advert3s_url, notice: 'Advert3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert3
      @advert3 = Advert3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert3_params
      params.require(:advert3).permit(:image, :link)
    end
end
