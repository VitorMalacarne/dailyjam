class CreateSongs < ActiveRecord::Migration[8.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :instrument
      t.text :notes

      t.timestamps
    end
  end
end
