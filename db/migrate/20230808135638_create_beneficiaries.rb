class CreateBeneficiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :beneficiaries do |t|

      t.references :charity, foreign_key: true
      t.string :need
      t.string :phone_number

      t.timestamps
     end
    end
  end

