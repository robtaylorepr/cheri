class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.references :collection, foreign_key: true
      t.string :audio

      t.timestamps
    end
  end
end
