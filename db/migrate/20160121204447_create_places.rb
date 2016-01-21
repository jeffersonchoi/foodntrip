class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :website
      t.float :lat
      t.float :long
      t.text :description
      t.float :ratings
      t.string :city
      t.string :country
      t.float :fnt_ratings
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
