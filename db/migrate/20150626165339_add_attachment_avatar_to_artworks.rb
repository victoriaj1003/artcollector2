class AddAttachmentAvatarToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :artworks, :avatar
  end
end
