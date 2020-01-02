# frozen_string_literal: true

# Creates a version table
class CreateVersions < ActiveRecord::Migration[6.0]
  def up
    create_table :versions do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :versions
  end
end
