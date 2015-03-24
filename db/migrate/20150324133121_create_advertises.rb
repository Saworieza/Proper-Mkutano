class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.file :image

      t.timestamps null: false
    end
  end
end
