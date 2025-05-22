class CreatePracticeSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :practice_sessions do |t|
      t.date :practiced_on
      t.integer :duration
      t.text :notes

      t.timestamps
    end
  end
end
