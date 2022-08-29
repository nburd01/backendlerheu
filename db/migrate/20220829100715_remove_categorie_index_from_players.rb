class RemoveCategorieIndexFromPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_index :players, name: "categorie_id"
  end
end
