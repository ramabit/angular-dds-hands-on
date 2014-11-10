class CreateAereas < ActiveRecord::Migration
  def change
    create_table :aereas do |t|
      t.integer :cantidad_dragones
      t.references :casa

      t.timestamps
    end
  end
end
