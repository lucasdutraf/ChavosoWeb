class CreateHairs < ActiveRecord::Migration[5.2]
  def change
    create_table :hairs do |t|
      t.string :type,   null: false, default: " "

      t.timestamps
    end
  end
end
