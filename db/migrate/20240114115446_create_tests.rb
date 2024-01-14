class CreateTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.string :category, null: false
      t.integer :year, null: false
      t.string :school_name, null: false
      t.text :notes

      t.timestamps
    end
  end
end
