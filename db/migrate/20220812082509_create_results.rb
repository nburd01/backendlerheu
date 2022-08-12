class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :score_le_rheu_reglementaire
      t.integer :score_adversaire_reglementaire
      t.integer :score_le_rheu_prolongations
      t.integer :score_adversaire_prolongations
      t.integer :score_le_rheu_penalties
      t.integer :score_adversaire_penalties

      t.timestamps
    end
  end
end
