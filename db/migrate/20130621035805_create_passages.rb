class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.text :quote
      t.string :title
      t.integer :page
      t.string :author

      t.timestamps
    end
  end
end
