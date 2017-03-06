class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :weight
      t.integer :reps
      t.integer :sets
      t.string :photo_url
      t.references :program, index: true, foreign_key: true
    end
  end
end
