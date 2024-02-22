Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :lists do
    resources :bookmarks, only: %i[index new create show]
  end
  resources :bookmarks, only: [:destroy]
end
