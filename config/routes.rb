Rails.application.routes.draw do
  # verb "url", to: "controller#action", as: "prefix"
  root to: "games#index"
  resources :games, except: [:index] do
    resources :participations, only: [:new, :create]
  end
end
