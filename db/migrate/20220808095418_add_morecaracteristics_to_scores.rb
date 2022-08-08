class AddMorecaracteristicsToScores < ActiveRecord::Migration[7.0]
  def change
    add_column :scores, :locaux, :string
    add_column :scores, :score_locaux, :integer
    add_column :scores, :visiteurs, :string
    add_column :scores, :score_visiteurs, :integer
  end
end
