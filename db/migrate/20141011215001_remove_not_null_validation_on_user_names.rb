class RemoveNotNullValidationOnUserNames < ActiveRecord::Migration
  def up
    change_column :oversight_users, :first_name, :string, null: true
    change_column :oversight_users, :last_name,  :string, null: true
  end

  def down
    change_column :oversight_users, :last_name,  :string, null: false
    change_column :oversight_users, :first_name, :string, null: false
  end
end
