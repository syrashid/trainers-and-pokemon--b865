class SkillsController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @skill = Skill.new
  end

  def create
    # Find the pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
    # Find the moves
    @moves = Move.where(id: params[:skill][:move_id])
    # Create the skill
    @moves.each do |move|
      Skill.create(pokemon: @pokemon, move: move)
    end

    redirect_to trainer_path(@pokemon.trainer)
  end
end
