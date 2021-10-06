Rails.application.routes.draw do
  devise_for :users, class_name: "Public::User"
  get 'public/Relationships'
  root 'public/homes#top'
  resources :users,only: [:show,:edit,:update,:destroy] do
  get 'followers' => 'relationships#followers', as: 'followers'
  get 'followings' => 'relationships#followings', as: 'followings'
  resource :relationships, only: [:create, :destroy]
  end
  resources :tweet_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
