class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end
