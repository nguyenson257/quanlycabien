class CreateSeaFishes < ActiveRecord::Migration[7.0]
  def change
    create_table :sea_fishes do |t|
      t.string :name
      t.string :charac
      t.string :color
      t.string :size
      t.string :habit
      t.string :place

      t.timestamps
    end
  end
end
