class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :town
      t.string :stadium
      t.text :description

      t.timestamps
    end
  end
end
