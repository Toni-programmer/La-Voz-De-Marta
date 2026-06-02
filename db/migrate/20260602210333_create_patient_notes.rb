class CreatePatientNotes < ActiveRecord::Migration[8.1]
  def change
    create_table :patient_notes do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :content
      t.date :session_date

      t.timestamps
    end
  end
end
