class CreatePrints < ActiveRecord::Migration[7.1]
  def change
    create_table :prints do |t|
      t.integer :subject, null: false
      t.integer :grade, null: false
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
