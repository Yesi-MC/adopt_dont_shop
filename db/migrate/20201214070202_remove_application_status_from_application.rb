class RemoveApplicationStatusFromApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :applications, :application_status, :string
  end
end
