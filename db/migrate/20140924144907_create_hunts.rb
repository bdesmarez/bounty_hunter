class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.integer :victim_id
      t.string :reason

      t.timestamps
    end
  end
end
