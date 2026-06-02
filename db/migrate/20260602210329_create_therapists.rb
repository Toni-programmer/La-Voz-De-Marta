class CreateTherapists < ActiveRecord::Migration[8.1]
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :email
      t.string :college_number

      t.timestamps
    end
    add_index :therapists, :email, unique: true
  end
end
