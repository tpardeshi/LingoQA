# frozen_string_literal: true

# Creates a screenshot table
class CreateScreenshots < ActiveRecord::Migration[6.0]
  def up
    create_table :screenshots do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :screenshots
  end
end
