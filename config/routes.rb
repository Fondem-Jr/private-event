Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :attendances
  #get 'event/index'
  root 'events#index'
  get 'past-upcoming-events', action: :show, controller: 'users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
