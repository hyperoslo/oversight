class CreateOversightRegions < ActiveRecord::Migration
  def change
    create_table :oversight_regions do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :oversight_regions, :name, unique: true
  end
end
