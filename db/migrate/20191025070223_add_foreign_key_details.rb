# frozen_string_literal: true

# Adds Foreign Key
class AddForeignKeyDetails < ActiveRecord::Migration[6.0]
  def up
    add_reference :versions, :products, foreign_key: true
    add_reference :locales, :products, foreign_key: true
    add_reference :screenshots, :locales, foreign_key: true
    add_reference :screenshots, :versions, foreign_key: true
  end
end
