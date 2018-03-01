class AddCompareColToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :compare_col, :integer
  end
end
