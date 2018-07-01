class CreateHairsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :hairs_users do |t|
      t.references :user, foreign_key: true
      t.references :hair, foreign_key: true

      t.timestamps
    end
  end
end
