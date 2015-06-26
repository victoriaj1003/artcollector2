class RemoveAvatarUpdateAtFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :avatar_updated_at, :datetime
    remove_column :artworks, :avater_file_name, :string
    remove_column :artworks, :avatar_content_type, :datetime
    remove_column :artworks, :avatar_file_size, :datetime
  end
end
