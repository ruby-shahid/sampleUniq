class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.attachment :file_one
      t.attachment :file_two
      t.attachment :file_tree
      t.attachment :file_four
      t.timestamps
    end
  end
end
