class AddCategoryIndexToCompetitions < ActiveRecord::Migration[7.0]
  def change
    add_column :competitions, :category_id, :integer
    add_index :competitions, :category_id
  end
end
