# frozen_string_literal: true

# Creates a locale table
class CreateLocales < ActiveRecord::Migration[6.0]
  def up
    create_table :locales do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :locales
  end
end
