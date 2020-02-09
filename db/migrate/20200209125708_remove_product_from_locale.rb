class RemoveProductFromLocale < ActiveRecord::Migration[6.0]
  def change
    remove_reference :locales, :product, null: false, foreign_key: true
  end
end
