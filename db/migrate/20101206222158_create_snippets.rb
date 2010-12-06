class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.string :caption
      t.text :content
      t.string :language, :default => 'ruby'
      t.integer :section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
  end
end
