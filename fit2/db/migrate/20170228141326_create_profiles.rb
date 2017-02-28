class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :location
      t.string :interests
    end
  end
end
