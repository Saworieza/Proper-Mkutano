class CreateMainAds < ActiveRecord::Migration
  def change
    create_table :main_ads do |t|
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
