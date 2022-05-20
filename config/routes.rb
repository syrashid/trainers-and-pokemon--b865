Rails.application.routes.draw do
  root to: 'pages#home'
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy do
    resources :skills, only: [:new, :create]
  end
  # As a user I want to add a move to a pokemon
  # As a user I can see a trainer's pokemon
# As a user I can add a pokemon to a trainer (catch a pokemon)
  # As a user I can release a pokemon (destroy)


  # Generate a move model
  # Seed the moves
  # Generate a Skill model (the join)
  # set up the associations and validations
  # Crash test
end
