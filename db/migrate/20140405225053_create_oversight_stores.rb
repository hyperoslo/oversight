class CreateOversightStores < ActiveRecord::Migration
  def change
    create_table :oversight_stores do |t|
      t.references :region, index: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
