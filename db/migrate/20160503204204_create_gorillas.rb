class CreateGorillas < ActiveRecord::Migration
  def change
    create_table :gorillas do |t|
      t.string :name
      t.string :description
      t.integer :anger_level

      t.timestamps null: false
    end
  end
end
