class AddMorecaracteristicsToDisciplines < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :discipline_img, :string
    add_column :disciplines, :discipline_root, :text
  end
end
