Rails.application.routes.draw do

  root "users#index"

  resources :users do
    resources :questions
  end

  resources :users do
    resources :answers
  end

  resources :questions do
    resources :answers
  end



end
