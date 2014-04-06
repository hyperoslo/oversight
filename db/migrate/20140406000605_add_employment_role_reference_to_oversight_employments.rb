class AddEmploymentRoleReferenceToOversightEmployments < ActiveRecord::Migration
  def change
    add_reference :oversight_employments, :employment_role, index: true
  end
end
