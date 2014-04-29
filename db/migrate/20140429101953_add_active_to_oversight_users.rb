class AddActiveToOversightUsers < ActiveRecord::Migration
  def change
    add_column :oversight_users, :active, :boolean
  end
end
