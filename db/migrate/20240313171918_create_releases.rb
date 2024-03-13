class CreateReleases < ActiveRecord::Migration[7.1]
  def change
    create_table :releases do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :country
      t.datetime :date
      t.string :type
      t.string :rating
    end
  end
end
