class AddCaracteristicsToScores < ActiveRecord::Migration[7.0]
  def change
    add_column :scores, :division, :string
    add_column :scores, :equipe, :string
    add_column :scores, :categorie, :string
  end
end
