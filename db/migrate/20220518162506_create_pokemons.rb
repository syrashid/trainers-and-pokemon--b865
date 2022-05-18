class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.references :trainer, null: false, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
