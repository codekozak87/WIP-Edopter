class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.user_id = params[:user_id]
    @event.company_id = params[:company_id]
    @event.event_name = params[:event_name]
    @event.event_date = params[:event_date]
    @event.event_description = params[:event_description]
    
    if @event.save
            redirect_to events_url
          else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.user_id = params[:user_id]
    @event.company_id = params[:company_id]
    @event.event_name = params[:event_name]
    @event.event_date = params[:event_date]
    @event.event_description = params[:event_description]
    
    if @event.save
            redirect_to events_url
          else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
        redirect_to events_url
      end
end
