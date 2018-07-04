class CreateHairs < ActiveRecord::Migration[5.2]
  def change
    create_table :hairs do |t|
      t.string :classification
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
