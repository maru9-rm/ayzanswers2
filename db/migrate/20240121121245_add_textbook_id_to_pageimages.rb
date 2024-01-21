class AddTextbookIdToPageimages < ActiveRecord::Migration[7.1]
  def change
    add_reference :pageimages, :textbook, foreign_key: true
  end
end
