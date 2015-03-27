class Advert2sController < ApplicationController
  before_action :set_advert2, only: [:show, :edit, :update, :destroy]

  # GET /advert2s
  # GET /advert2s.json
  def index
    @advert2s = Advert2.all
  end

  # GET /advert2s/1
  # GET /advert2s/1.json
  def show
  end

  # GET /advert2s/new
  def new
    @advert2 = Advert2.new
  end

  # GET /advert2s/1/edit
  def edit
  end

  # POST /advert2s
  # POST /advert2s.json
  def create
    @advert2 = Advert2.new(advert2_params)

    respond_to do |format|
      if @advert2.save
        format.html { redirect_to @advert2, notice: 'Advert2 was successfully created.' }
        format.json { render :show, status: :created, location: @advert2 }
      else
        format.html { render :new }
        format.json { render json: @advert2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advert2s/1
  # PATCH/PUT /advert2s/1.json
  def update
    respond_to do |format|
      if @advert2.update(advert2_params)
        format.html { redirect_to @advert2, notice: 'Advert2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert2 }
      else
        format.html { render :edit }
        format.json { render json: @advert2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advert2s/1
  # DELETE /advert2s/1.json
  def destroy
    @advert2.destroy
    respond_to do |format|
      format.html { redirect_to advert2s_url, notice: 'Advert2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert2
      @advert2 = Advert2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert2_params
      params.require(:advert2).permit(:image, :link)
    end
end
