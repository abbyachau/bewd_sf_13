class AddGenreToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :genre, :string
    add_column :artists, :active, :boolean
    add_column :artists, :fake, :text
  end
end
