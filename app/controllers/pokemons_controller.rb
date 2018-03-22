class PokemonsController < ApplicationController

  def create
    @pokemon = Pokemon.new
    @pokemon.name = params[:pokemon][:name]
    @pokemon.ndex = params[:pokemon][:ndex]
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer = current_trainer
    if @pokemon.valid?
      @pokemon.save
      redirect_to trainer_path(id: current_trainer) and return
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to pokemons_path
    end
  end

  def new
      @pokemon = Pokemon.new
  end
end
