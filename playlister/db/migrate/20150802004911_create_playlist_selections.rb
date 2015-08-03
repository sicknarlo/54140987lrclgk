class CreatePlaylistSelections < ActiveRecord::Migration
  def change
    create_table :playlist_selections do |t|
      t.references :song, index: true, foreign_key: true
      t.references :playlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
