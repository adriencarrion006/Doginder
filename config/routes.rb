Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dogs do
    resources :chatrooms, only: [:create]
  end
  resources :matches, only: [:create]

  resources :chatrooms, only: [:show, :index, :new] do
    resources :messages, only: :create

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
