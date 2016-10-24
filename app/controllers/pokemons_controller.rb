class PokemonsController < ApplicationController
  def capture
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.trainer = current_trainer
  	@pokemon.save
  	redirect_to :root
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.save
    if @pokemon.health <= 0
      @pokemon.destroy
    end
    redirect_to current_trainer
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render "new"
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end