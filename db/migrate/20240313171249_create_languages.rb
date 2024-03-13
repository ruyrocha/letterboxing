class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :type
      t.string :name
    end
  end
end
