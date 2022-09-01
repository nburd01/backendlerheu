class RemoveTeamNameFromTeam < ActiveRecord::Migration[7.0]
  def change
    remove_column(:teams, :name)
    add_column(:teams, :name, :string)
  end
end
