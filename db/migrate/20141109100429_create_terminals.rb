class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.text :description
      t.text :other_attributes

      t.timestamps
    end
  end
end
