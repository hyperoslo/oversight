class CreateOversightEmployments < ActiveRecord::Migration
  def change
    create_table :oversight_employments do |t|
      t.references :user, index: true
      t.references :store, index: true

      t.timestamps
    end
  end
end
