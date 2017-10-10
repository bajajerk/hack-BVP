class CreateAcs < ActiveRecord::Migration
  def change
    create_table :acs do |t|
      t.boolean :status

      t.timestamps null: false
    end
  end
end
