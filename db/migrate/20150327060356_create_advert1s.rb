class CreateAdvert1s < ActiveRecord::Migration
  def change
    create_table :advert1s do |t|
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
