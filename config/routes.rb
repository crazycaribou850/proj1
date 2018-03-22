Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'home/index', to: "pokemon#capture", as: :capture
  get 'pokemons/new', to: "pokemons#new", as: :pokemons
  post 'pokemons/new', to: "pokemons#create", as: :pokemake
end
