class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :defaultStatus

      t.timestamps
    end
  end
end
