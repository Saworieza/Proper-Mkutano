class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /events
  # GET /events.json

  def index
    @main_ads = MainAd.all

    @advert1s = Advert1.order('created_at DESC').limit(1) 
    @advert2s = Advert2.order('created_at DESC').limit(1) 
    @advert3s = Advert3.order('created_at DESC').limit(1) 
    
    if params.has_key?("industry")
      @events = Event.where(category: params[:industry]).order("created_at DESC").paginate(page: params[:page], per_page: 10)
    elsif params.has_key?("country")
            @events = Event.where(country: params[:country]).order("created_at DESC").paginate(page: params[:page], per_page: 10)
      elsif params[:search]
        #custom search. no going back to model
        @events = Event.where("category LIKE ? OR venue LIKE ? OR name LIKE ? OR theme LIKE? OR company LIKE? OR country LIKE? OR location LIKE?",params[:search], params[:search], params[:search], params[:search], params[:search], params[:search], params[:search]).paginate(page: params[:page], per_page: 10)
          # @events = Event.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 10)
      else
        @events = Event.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)

      #search with sunspot
      #@query = Event.search do
          #fulltext params[:search]
      #end
      #@events = Event.where(id: @query.results.map(&:id)).order("created_at DESC").paginate(page: params[:page], per_page: 10)
    end

=begin    
    code to hide past dates. to be refined later
    @events = Event.find(:all, 
    :order => "date", 
    :conditions => ['date >= ?', Date.today]
    ).paginate(:per_page => 10, :page => params[:page])
=end
  end


  # GET /events/1
  # GET /events/1.json
  def show
  end

  def find_category (string)
    @event = Event.find_categories(string)
  end
  helper_method :find_category

  def find_country (string)
    @event = Event.find_countries(string)
  end
  helper_method :find_country

  def search
    @events = Event.search params[:search]
  end

  # GET /events/new
  def new
    @event = current_user.events.build
  end

  # GET /events/1/edit
  def edit
  end

 


  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully Deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:image, :name, :organizer, :category, :date, :location, :link, :theme, :venue, :company, :country, :tag_list => [])
    end
end
