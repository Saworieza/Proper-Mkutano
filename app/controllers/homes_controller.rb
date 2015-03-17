class HomesController < ApplicationController
  def index
    @homes = Home.all
    @events = Event.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
  end
end
