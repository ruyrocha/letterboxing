class CreateCrews < ActiveRecord::Migration[7.1]
  def change
    create_table :crews do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :role
      t.string :name
    end
  end
end
