Rails.application.routes.draw do
  get 'reviews/new'
  root 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    namespace :admin do
      resources :restaurants, only: [:index]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
