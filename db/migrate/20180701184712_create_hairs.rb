class CreateHairs < ActiveRecord::Migration[5.2]
  def change
    create_table :hairs do |t|
      t.string :lenght
      t.string :type

      t.timestamps
    end
  end
end
