class CreateOversightUsers < ActiveRecord::Migration
  def change
    create_table :oversight_users do |t|
      t.string :first_name,   null: false
      t.string :middle_names
      t.string :last_name,    null: false
      t.string :phone
      t.string :email

      t.timestamps
    end

    add_index :oversight_users, :phone, unique: true
    add_index :oversight_users, :email, unique: true
  end
end
