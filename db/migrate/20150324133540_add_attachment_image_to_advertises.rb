class AddAttachmentImageToAdvertises < ActiveRecord::Migration
  def self.up
    change_table :advertises do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :advertises, :image
  end
end
