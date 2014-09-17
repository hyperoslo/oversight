Oversight::Engine.routes.draw do
  resources :teams, only: %i(index show edit update)

  resources :users, only: %i(show edit) do
    resources :teams, only: %i(index show edit update)
  end
end
