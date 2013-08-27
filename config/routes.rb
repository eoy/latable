Latable::Application.routes.draw do


  resources :restaurants do
  	resources :reservations do
  		post 'cancel', to: "reservations#cancel", :on => :member, :as => "cancel_reservation"
  	end
  end

  get "/:id", to: "restaurants#show", as: "direct"

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end