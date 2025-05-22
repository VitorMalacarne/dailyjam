class CreateSections < ActiveRecord::Migration[8.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :start_time
      t.integer :end_time
      t.integer :difficulty
      t.text :notes
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
