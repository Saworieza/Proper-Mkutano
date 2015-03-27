class AddAttachmentImageToAdvert1s < ActiveRecord::Migration
  def self.up
    change_table :advert1s do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :advert1s, :image
  end
end
