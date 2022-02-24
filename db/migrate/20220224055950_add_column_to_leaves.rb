class AddColumnToLeaves < ActiveRecord::Migration[7.0]
  def change
    add_column :leaves, :applicant_name, :string
  end
end
