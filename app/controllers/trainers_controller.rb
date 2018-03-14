class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:poke])
    @pokemon.damage(10)
    @pokemon.save
    if @pokemon.health <= 0
      Pokemon.delete(params[:poke])
    end
    redirect_to trainer_path
  end

end
