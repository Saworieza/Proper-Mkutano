class AddAttachmentImageToMainAds < ActiveRecord::Migration
  def self.up
    change_table :main_ads do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :main_ads, :image
  end
end
