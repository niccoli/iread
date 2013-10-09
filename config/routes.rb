Iread::Application.routes.draw do
  resources :users
  resources :books
  resources :categories

  root :to => 'users#index'
end
