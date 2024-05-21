class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.decimal :hours
      t.date :dateWorked
      t.integer :user_id

      t.timestamps
    end
  end
end
