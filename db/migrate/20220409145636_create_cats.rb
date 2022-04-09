class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :avatar
      t.string :name
      t.text :bio
      t.string :color
      t.integer :age
      t.string :gender
      t.string :characteristics

      t.timestamps
    end
  end
end
