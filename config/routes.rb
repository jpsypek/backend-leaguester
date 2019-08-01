Rails.application.routes.draw do
  resources :team_players
  resources :players
  resources :teams
  resources :leagues
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
