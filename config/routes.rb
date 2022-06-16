Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dogs
  resources :matches, only: [:create]

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
