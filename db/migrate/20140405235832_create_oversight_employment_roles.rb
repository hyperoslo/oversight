class CreateOversightEmploymentRoles < ActiveRecord::Migration
  def change
    create_table :oversight_employment_roles do |t|
      t.string :key,   null: false
      t.string :title, null: false

      t.timestamps
    end

    add_index :oversight_employment_roles, :key,   unique: true
    add_index :oversight_employment_roles, :title, unique: true
  end
end
