Rails.application.routes.draw do

  devise_for :users
  devise_for :models
  resources :articles do
    resources :comments
  end
  root controller: :landing, action: :index
end
