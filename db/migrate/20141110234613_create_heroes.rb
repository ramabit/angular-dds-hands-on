class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.integer :poder_especial
      t.references :casa

      t.timestamps
    end
  end
end
