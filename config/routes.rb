Arailsdemo::Application.routes.draw do
  resources :snippets

  resources :sections

  resources :posts

  root :to => "posts#index"
end
