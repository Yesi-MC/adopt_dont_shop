class AddApplicationStatusToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :application_status, :string, default: "In Progress"
  end
end
