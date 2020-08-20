class AddColumnRolesToUSers < ActiveRecord::Migration[6.0]
  def change
    add_column :role, :string
  end
end
