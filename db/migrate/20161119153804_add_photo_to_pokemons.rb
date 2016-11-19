class AddPhotoToPokemons < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :photo, :string
  end
end
