class RemoveTelephoneNumberFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :telephone_number, :string
  end
end
