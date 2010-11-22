Arailsdemo::Application.routes.draw do
  resources :sections

  resources :posts

  root :to => "posts#index"
end
