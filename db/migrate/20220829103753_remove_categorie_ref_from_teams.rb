class RemoveCategorieRefFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column(:teams, :categorie_id)
  end
end
