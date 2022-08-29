class AddCategoryRefToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :category_id, :string
    add_index :teams, :category_id
  end
end
