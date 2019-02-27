class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
