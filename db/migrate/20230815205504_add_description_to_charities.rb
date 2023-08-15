class AddDescriptionToCharities < ActiveRecord::Migration[7.0]
  def change
    add_column :charities, :description, :string
  end
end
