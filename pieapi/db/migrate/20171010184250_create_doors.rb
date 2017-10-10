class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.boolean :status

      t.timestamps null: false
    end
  end
end
