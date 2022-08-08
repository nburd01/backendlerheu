class AddCaracteristicsToDisciplines < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :name, :string
    add_column :disciplines, :description, :text
  end
end
