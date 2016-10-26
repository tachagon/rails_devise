class AddMemberCodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :member_code, :string
    add_index :users, :member_code, unique: true
  end
end
