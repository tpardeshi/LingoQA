class RenameVersionToProductVerions < ActiveRecord::Migration[6.0]
  def change
    rename_table :versions, :product_versions
  end
end
