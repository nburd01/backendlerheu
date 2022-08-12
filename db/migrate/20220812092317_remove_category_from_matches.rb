class RemoveCategoryFromMatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :categorie_id
  end
end
