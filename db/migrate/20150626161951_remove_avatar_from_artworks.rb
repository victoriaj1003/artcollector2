class RemoveAvatarFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :avatar_file_name, :string
  end
end
