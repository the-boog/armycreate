class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :name
      t.string :type
      t.string :speed
      t.string :melee
      t.string :range
      t.string :defense
      t.string :attack
      t.string :nerve
      t.string :point
      t.belongs_to :race, foreign_key: true

      t.timestamps
    end
  end
end
