class CreateClasifications < ActiveRecord::Migration[7.0]
  def change
    create_table :clasifications do |t|
      t.references :movements, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
