Arailsdemo::Application.routes.draw do
  get "pages/home"

  post 'login', :to => 'sessions#create'
  match 'login', :to => 'sessions#new', :as => 'login'
  match 'logout', :to => 'sessions#destroy', :as => 'logout'

  resources :snippets

  resources :sections

  resources :posts

  root :to => "pages#home"
end
