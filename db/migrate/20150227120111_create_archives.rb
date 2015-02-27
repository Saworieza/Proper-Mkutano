class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :image
      t.string :publication_date

      t.timestamps null: false
    end
  end
end
