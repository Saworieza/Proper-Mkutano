class AddAttachmentImageToAdvert2s < ActiveRecord::Migration
  def self.up
    change_table :advert2s do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :advert2s, :image
  end
end
