class AddComponentsToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :name, :string
    add_column :categories, :description, :text
    add_reference :categories, :discipline, null: false, foreign_key: true
  end
end
