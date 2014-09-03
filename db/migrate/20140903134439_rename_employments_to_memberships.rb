class RenameEmploymentsToMemberships < ActiveRecord::Migration
  def change
    rename_table :oversight_employments, :oversight_memberships
  end
end
