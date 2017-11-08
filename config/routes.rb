Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  root 'posts#index'
  get 'practice/index'

  get 'practice/about'

  get 'about' => 'practice#about'
  get 'index' => 'practice#index'
  post 'index' => 'practice#index'

  get 'users_posts' => 'posts#users_posts'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
