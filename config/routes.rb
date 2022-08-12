Rails.application.routes.draw do
  resources :matches
  resources :opponents
  resources :results
  resources :calendars
  resources :venues
  resources :competitions
  resources :teams
  resources :players
  resources :categories
  resources :scores
  resources :disciplines
  resources :user, only: :show
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end