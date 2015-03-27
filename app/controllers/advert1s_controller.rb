class Advert1sController < ApplicationController
  before_action :set_advert1, only: [:show, :edit, :update, :destroy]

  # GET /advert1s
  # GET /advert1s.json
  def index
    @advert1s = Advert1.all
  end

  # GET /advert1s/1
  # GET /advert1s/1.json
  def show
  end

  # GET /advert1s/new
  def new
    @advert1 = Advert1.new
  end

  # GET /advert1s/1/edit
  def edit
  end

  # POST /advert1s
  # POST /advert1s.json
  def create
    @advert1 = Advert1.new(advert1_params)

    respond_to do |format|
      if @advert1.save
        format.html { redirect_to @advert1, notice: 'Advert1 was successfully created.' }
        format.json { render :show, status: :created, location: @advert1 }
      else
        format.html { render :new }
        format.json { render json: @advert1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advert1s/1
  # PATCH/PUT /advert1s/1.json
  def update
    respond_to do |format|
      if @advert1.update(advert1_params)
        format.html { redirect_to @advert1, notice: 'Advert1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert1 }
      else
        format.html { render :edit }
        format.json { render json: @advert1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advert1s/1
  # DELETE /advert1s/1.json
  def destroy
    @advert1.destroy
    respond_to do |format|
      format.html { redirect_to advert1s_url, notice: 'Advert1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert1
      @advert1 = Advert1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert1_params
      params.require(:advert1).permit(:image, :link)
    end
end
