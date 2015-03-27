class Adverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
