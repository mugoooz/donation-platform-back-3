class AddHostedButtonIdToCharities < ActiveRecord::Migration[7.0]
  def change
    add_column :charities, :hosted_button_id, :string
  end
end
