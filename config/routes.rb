Rails.application.routes.draw do
  get 'tweets' => 'tweets#index'
  post 'tweets' => 'tweets#create'
end
