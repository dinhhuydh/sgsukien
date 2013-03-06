class EventsController < ApplicationController
  expose(:user) {
    User.find_by_id(params[:user_id])
  }

  def new
    @event = Event.new 
  end

  def create
    @event = user.events.build(params[:event])
    if @event.save
      redirect_to user_event_path(user, @event)
    else
      render :new
    end
  end

  def show
    @event = user.events.find(params[:id])
  end
end
