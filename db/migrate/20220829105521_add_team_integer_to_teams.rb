class AddTeamIntegerToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :name, :integer
  end
end
