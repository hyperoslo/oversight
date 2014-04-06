Oversight::Engine.routes.draw do
  resources :users, only: %i(show edit)
end
