class CreateAdvert2s < ActiveRecord::Migration
  def change
    create_table :advert2s do |t|
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
