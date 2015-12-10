class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.references :vendor, index: true, foreign_key: true

      t.timestamps
    end
  end
end
