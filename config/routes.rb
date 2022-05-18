Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy
  # As a user I can see a trainer's pokemon
  # As a user I can add a pokemon to a trainer (catch a pokemon)
  # As a user I can release a pokemon (destroy)
end
