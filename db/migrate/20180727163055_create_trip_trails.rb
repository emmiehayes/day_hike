class CreateTripTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_trails do |t|
      t.belongs_to :trail, foreign_key: true
      t.belongs_to :trip, foreign_key: true

      t.timestamps
    end
  end
end
