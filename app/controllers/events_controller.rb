class EventsController < ApplicationController
	before_action :authenticate_user!
	before_action :get_event

  def index
  end

  def show
  end

  def attend
  		UserEvent.find_or_create_by(user_id: current_user.id, event_id: params[:id])
  		redirect_to @event
  end

  def unattend
  	user_event = UserEvent.find_by_user_id(current_user.id)
  	user_event.delete
  	redirect_to @event
  end

  def get_event
  	@event = Event.find(params[:id])
  end
end
