class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :company
      t.string :position
      t.string :description
      t.string :url
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
