Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [ :index ]
  resources :foodtrucks do
    resources :bookings, only: [ :create, :add ]
  end
end
