class CreateTextbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :textbooks do |t|
      t.integer :subject, null: false
      t.integer :grade, null: false
      t.integer :texttitle, null:false
      t.text :notes

      t.timestamps
    end
  end
end
