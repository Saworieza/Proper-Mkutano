class AddAttachmentAdvertToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :advert
    end
  end

  def self.down
    remove_attachment :ads, :advert
  end
end
