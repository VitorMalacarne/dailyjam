class CreateRecordings < ActiveRecord::Migration[8.0]
  def change
    create_table :recordings do |t|
      t.references :practice_session, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.string :file
      t.text :comments

      t.timestamps
    end
  end
end
