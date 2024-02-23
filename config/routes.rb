Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[index new create show]
  end
  resources :bookmarks, only: [:destroy]
end
