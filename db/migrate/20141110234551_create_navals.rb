class CreateNavals < ActiveRecord::Migration
  def change
    create_table :navals do |t|
      t.integer :cantidad_soldados
      t.references :casa

      t.timestamps
    end
  end
end
