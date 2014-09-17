Oversight::Engine.routes.draw do
  resources :teams, only: %i(index show)

  resources :users, only: %i(show edit) do
    resources :teams, only: %i(index show)
  end
end
