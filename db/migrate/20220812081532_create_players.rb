class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :second_name
      t.date :date_of_birth
      t.text :player_img
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
