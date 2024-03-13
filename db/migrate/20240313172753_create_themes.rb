class CreateThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :themes do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :name
    end
  end
end
