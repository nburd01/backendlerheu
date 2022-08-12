class CreateOpponents < ActiveRecord::Migration[7.0]
  def change
    create_table :opponents do |t|
      t.string :club

      t.timestamps
    end
  end
end
