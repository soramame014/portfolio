class RemoveFirstNameKanaFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :first_name_kana, :string
  end
end
