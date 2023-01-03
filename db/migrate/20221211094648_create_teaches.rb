class CreateTeaches < ActiveRecord::Migration[6.1]
  def change
    create_table :teaches do |t|

      t.timestamps
    end
  end
end
