class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :image
      t.string :name
      t.string :organizer
      t.date :date
      t.string :location
      t.string :link

      t.timestamps null: false
    end
  end
end
