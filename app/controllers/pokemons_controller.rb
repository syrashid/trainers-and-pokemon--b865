class PokemonsController < ApplicationController

  def create
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = Pokemon.new(poke_params)
    @pokemon.trainer = @trainer
    if @pokemon.save
      redirect_to trainer_path(@trainer)
    else
      render 'trainers/show'
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    redirect_to @pokemon.trainer
  end

  private

  def poke_params
    params.require(:pokemon).permit(:name, :image_url)
  end

end
