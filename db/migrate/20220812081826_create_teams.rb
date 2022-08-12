class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :name
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
