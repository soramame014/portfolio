class RemovePostalCodeFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :postal_code, :string
  end
end
