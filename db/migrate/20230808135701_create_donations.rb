class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.string :charity
      t.string :donor
      t.decimal :amount
      t.string :name
      t.string :location
      t.string :phone_number
      t.boolean :anonymous
      t.string :recurrence
      

      t.timestamps
    end
  end
end