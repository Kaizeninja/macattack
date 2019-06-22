class Photos < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :Picture, :picture
  end
end 