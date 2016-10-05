class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      #t.integer :user_id
      t.references :user, foreign_key: true
      #t.integer :application_id
      t.references :application, foreign_key: true

      t.timestamps
    end
  end
end
