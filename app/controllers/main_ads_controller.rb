class MainAdsController < ApplicationController
  before_action :set_main_ad, only: [:show, :edit, :update, :destroy]

  # GET /main_ads
  # GET /main_ads.json
  def index
    @main_ads = MainAd.all

    @advert1s = Advert1.order('created_at DESC').limit(1) 
    @advert2s = Advert2.order('created_at DESC').limit(1) 
    @advert3s = Advert3.order('created_at DESC').limit(1)
  end

  # GET /main_ads/1
  # GET /main_ads/1.json
  def show
  end

  # GET /main_ads/new
  def new
    @main_ad = MainAd.new
  end

  # GET /main_ads/1/edit
  def edit
  end

  # POST /main_ads
  # POST /main_ads.json
  def create
    @main_ad = MainAd.new(main_ad_params)

    respond_to do |format|
      if @main_ad.save
        format.html { redirect_to @main_ad, notice: 'Main ad was successfully created.' }
        format.json { render :show, status: :created, location: @main_ad }
      else
        format.html { render :new }
        format.json { render json: @main_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_ads/1
  # PATCH/PUT /main_ads/1.json
  def update
    respond_to do |format|
      if @main_ad.update(main_ad_params)
        format.html { redirect_to @main_ad, notice: 'Main ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_ad }
      else
        format.html { render :edit }
        format.json { render json: @main_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_ads/1
  # DELETE /main_ads/1.json
  def destroy
    @main_ad.destroy
    respond_to do |format|
      format.html { redirect_to main_ads_url, notice: 'Main ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_ad
      @main_ad = MainAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_ad_params
      params.require(:main_ad).permit(:image, :link)
    end
end
