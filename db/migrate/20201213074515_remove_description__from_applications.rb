class RemoveDescriptionFromApplications < ActiveRecord::Migration[5.2]
  def change
    remove_column :applications, :description, :string
  end
end
