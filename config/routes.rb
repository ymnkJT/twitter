Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'tweets/error' => 'tweets#error'
end
