class RemoveVerionIdFromScreenshot < ActiveRecord::Migration[6.0]
  def change
    remove_reference :screenshots, :version, null: false, foreign_key: true
  end
end
