class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :heading
      t.text :body
      t.integer :position
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
