Oversight::Engine.routes.draw do
  resources :users, only: %i(show edit)
  resources :teams, only: %i(index show)
end
