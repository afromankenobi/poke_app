class CatchedsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @catcheds = current_user.catcheds
  end

  def new
    @pokemons = Pokemon.all
  end

  def level_up
    catched = Catched.find params[:id]
    catched.level += 1

    if catched.save
      flash[:notice] = 'success'
    else
      flash[:error] = 'fail'
    end

    redirect_to catcheds_path
  end

  def create
    pokemons = Pokemon.find(
      user_catched_params[:pokemon_ids].delete_if(&:empty?)
    )
    current_user.pokemons << pokemons

    if current_user.save
      flash[:notice] = 'success'
    else
      flash[:error] = 'fail'
    end

    redirect_to catcheds_path
  end

  protected

  def user_catched_params
    params.require(:user).permit(pokemon_ids: [])
  end
end
