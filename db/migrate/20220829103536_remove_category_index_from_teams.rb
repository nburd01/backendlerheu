class RemoveCategoryIndexFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_index :teams, name: "index_teams_on_categorie_id"
  end
end
