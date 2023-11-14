class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :color
      t.string :location, null: false
      t.integer :age
      t.integer :legs, null: false, default: 4
      t.boolean :adopted, null: false, default: false

      t.timestamps
    end
  end
end
