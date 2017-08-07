Rails.application.routes.draw do

  resources :votes
  root "users#index"

  resources :users do
    resources :questions, only: [:index, :create, :update, :destroy]
    resources :answers, only: [:index, :create, :update, :destroy]
    resources :comments, only: [:index, :create, :update, :destroy]
  end

end
