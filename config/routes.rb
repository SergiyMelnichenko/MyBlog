Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts
  resources :tags, only:[:show]
  resources :posts do
    resources :likes
  end
  # namespace :admin do

  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
