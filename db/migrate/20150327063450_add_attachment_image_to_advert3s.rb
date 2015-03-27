class AddAttachmentImageToAdvert3s < ActiveRecord::Migration
  def self.up
    change_table :advert3s do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :advert3s, :image
  end
end
