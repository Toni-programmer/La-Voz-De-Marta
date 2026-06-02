class CreatePatients < ActiveRecord::Migration[8.1]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.date :birth_date
      t.string :phone
      t.string :email
      t.string :modality
      t.text :background

      t.timestamps
    end
  end
end
