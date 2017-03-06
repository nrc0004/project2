class CreateProfile < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.integer :age
      t.string :gender
      t.string :location
      t.string :interests
      t.references :user, index: true, foreign_key: true
    end
  end
end
