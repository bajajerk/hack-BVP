class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.boolean :status
      t.integer :red
      t.integer :green
      t.integer :blue

      t.timestamps null: false
    end
  end
end
