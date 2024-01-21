class CreatePageimages < ActiveRecord::Migration[7.1]
  def change
    create_table :pageimages do |t|
      t.string :title
      t.timestamps
    end
  end
end
