class AddProductVerionIdToScreenshots < ActiveRecord::Migration[6.0]
  def change
    add_reference :screenshots, :product_version, foreign_key: true
  end
end