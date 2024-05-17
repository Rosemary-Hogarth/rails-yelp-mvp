Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
