class CreateSectionPractices < ActiveRecord::Migration[8.0]
  def change
    create_table :section_practices do |t|
      t.references :practice_session, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.integer :accuracy
      t.text :comments

      t.timestamps
    end
  end
end
