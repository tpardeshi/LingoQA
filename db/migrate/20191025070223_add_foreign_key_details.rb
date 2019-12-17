# frozen_string_literal: true

# Adds Foreign Key
class AddForeignKeyDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :versions, :product, foreign_key: true
    add_reference :locales, :product, foreign_key: true
    add_reference :screenshots, :locale, foreign_key: true
    add_reference :screenshots, :version, foreign_key: true
  end
end
