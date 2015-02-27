class AddAttachmentImageToArchives < ActiveRecord::Migration
  def self.up
    change_table :archives do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :archives, :image
  end
end
