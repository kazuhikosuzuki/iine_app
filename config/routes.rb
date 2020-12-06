Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[index show]
  resources :posts, only: %i[index show create] do
    resources :likes, only: %i[create destroy]
  end

  root 'posts#index'
end
