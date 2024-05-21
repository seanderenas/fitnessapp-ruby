class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.decimal :hours
      t.decimal :miles
      t.date :dateRan

      t.integer :user_id

      t.timestamps
    end
  end
end
