class CreateAppointments < ActiveRecord::Migration[8.1]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :therapist, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.datetime :scheduled_at
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
