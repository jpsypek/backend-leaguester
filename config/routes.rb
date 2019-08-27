Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :team_players
      resources :players, only: [:create]
      post '/login', to: 'auth#create'
      resources :teams
      resources :leagues
      resources :organizations
    end
  end
end
