class CreateReccomendations < ActiveRecord::Migration[6.0]
  def change
    create_table :reccomendations do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :relationship
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
