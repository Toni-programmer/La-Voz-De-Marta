class CreateTestimonials < ActiveRecord::Migration[8.1]
  def change
    create_table :testimonials do |t|
      t.string :author_name
      t.string :role
      t.text :content

      t.timestamps
    end
  end
end
