class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.text :content
      t.references :categorie, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.references :calendar, null: false, foreign_key: true
      t.references :opponent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
