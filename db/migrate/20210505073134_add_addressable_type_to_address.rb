class AddAddressableTypeToAddress < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :addressable_type, :integer
  end
end
