class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :date
      t.string :tagline
      t.text :description
      t.integer :duration
      t.float :rating
    end
  end
end
