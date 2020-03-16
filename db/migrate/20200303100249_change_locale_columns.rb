class ChangeLocaleColumns < ActiveRecord::Migration[6.0]
  def change
    change_table :locales do |t|
      t.remove :name
      t.string :code
      t.string :language
    end
  end
end