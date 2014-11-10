class CreateTerrestres < ActiveRecord::Migration
  def change
    create_table :terrestres do |t|
      t.integer :cantidad_soldados
      t.references :casa

      t.timestamps
    end
  end
end
