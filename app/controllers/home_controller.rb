class HomeController < ApplicationController
	before_action :authenticate_user!, except: :index
  
  def index
  	@events = Event.order_by_created_at
  end
end
