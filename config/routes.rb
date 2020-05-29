Rails.application.routes.draw do
  resources :events do
  	member do 
	    post 'attend'
	    delete 'unattend'
	  end
  end
  # get '/join_event', to: 'events#join_event', as: :join_event
  devise_for :users
  root 'home#index'
end
