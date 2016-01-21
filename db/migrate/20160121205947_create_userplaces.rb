class CreateUserplaces < ActiveRecord::Migration
  def change
    create_table :userplaces do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :place, index: true, foreign_key: true
      t.boolean :bookmark
      t.integer :check_in
      t.date :bookmark_date
      t.date :checkin_date

      t.timestamps null: false
    end
  end
end
