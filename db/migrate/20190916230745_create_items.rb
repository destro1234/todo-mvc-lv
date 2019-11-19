class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id

      # wiring the Schema - The database - FK

      t.timestamps
    end
  end
end
