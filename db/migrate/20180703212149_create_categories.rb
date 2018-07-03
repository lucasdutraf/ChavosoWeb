class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :lenght
      t.references :hair, foreign_key: true

      t.timestamps
    end
  end
end
