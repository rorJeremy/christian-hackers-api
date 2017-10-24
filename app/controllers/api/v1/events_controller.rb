class Api::V1::EventsController < ApplicationController
  def index
  	@events = Event.all.sort_by &:start_time
  	render json: @events
  end

  def show
  	@event = Event.find(params[:id])
  	render json: @event
  end
end
