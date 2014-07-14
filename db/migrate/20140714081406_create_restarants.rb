class CreateRestarants < ActiveRecord::Migration
  def change
    create_table :restarants do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
