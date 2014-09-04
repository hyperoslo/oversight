class RenameEmploymentRoleToRole < ActiveRecord::Migration
  def change
    rename_table :oversight_employment_roles, :oversight_roles
    rename_column :oversight_memberships, :employment_role_id, :role_id
  end
end
