class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :password
=begin
      t.integer :role
=end
      t.integer :status

      t.timestamps
    end
  end
end
