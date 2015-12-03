class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :city
      t.integer :postelCode

      t.timestamps null: false
    end
  end
end
