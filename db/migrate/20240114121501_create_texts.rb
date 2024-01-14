class CreateTexts < ActiveRecord::Migration[7.1]
  def change
    create_table :texts do |t|
      t.integer :subject, null: false
      t.integer :grade, null: false
      t.integer :textbook, null:false
      t.text :pagenumber
      t.text :notes
      t.text :textname

      t.timestamps
    end
  end
end
