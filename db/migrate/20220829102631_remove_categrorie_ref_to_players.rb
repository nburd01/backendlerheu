class RemoveCategrorieRefToPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_column(:players, :categorie_id)
  end
end
