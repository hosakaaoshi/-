Rails.application.routes.draw do
  devise_for :users, class_name: "Public::User"
  root to: 'homes#top'
  get 'public/Relationships'
  namespace :public do
  resources :user,only: [:show,:edit,:update,:destroy] do
  get 'followers' => 'relationships#followers', as: 'followers'
  get 'followings' => 'relationships#followings', as: 'followings'
  resource :relationships, only: [:create, :destroy]
  end

  resources :tweet,only: [:index, :show, :edit, :update, :new, :create]
  resources :tweet_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
