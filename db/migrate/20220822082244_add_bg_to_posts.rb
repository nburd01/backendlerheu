class AddBgToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :postBg, :text
  end
end
