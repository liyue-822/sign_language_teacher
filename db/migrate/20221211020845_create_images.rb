class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :disk_filename
      t.integer :filesize
      t.string :content_type
      t.string :description
      t.integer :author_id
      t.timestamp :created_on

      t.timestamps
    end
  end
    def self.up
      create_table :images do |t|
        t.string :filename, :default => "", :null => false
        t.string :disk_filename, :default => "", :null => false
        t.integer :filesize, :default => 0, :null => false
        t.string :content_type, :limit => 60, :default => ""
        t.string :description
        t.integer :author_id, :default => 0, :null => false
        t.timestamp :created_on
      end
    end

    def self.down
      drop_table :images
    end
end
