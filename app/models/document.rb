class Document < ApplicationRecord
  has_attached_file :file_one
  has_attached_file :file_two
  has_attached_file :file_tree
  has_attached_file :file_four
  validates_attachment_file_name :file_one, matches: [/\.csv$/]
  validates_attachment_file_name :file_two, matches: [/\.csv$/]
  validates_attachment_file_name :file_tree, matches: [/\.csv$/]
  validates_attachment_file_name :file_four, matches: [/\.csv$/]

  validates_attachment_presence :file_one
  validates_attachment_presence :file_two
  validates_attachment_presence :file_tree
  validates_attachment_presence :file_four

  validates_numericality_of :compare_col, greater_than: 0


  def get_dup_attributes
    raw_object_one = Roo::CSV.new(file_one.path).column(compare_col).compact.uniq rescue ""
    raw_object_two = Roo::CSV.new(file_two.path).column(compare_col).compact.uniq rescue ""
    raw_object_three = Roo::CSV.new(file_tree.path).column(compare_col).compact.uniq rescue ""
    raw_object_four = Roo::CSV.new(file_four.path).column(compare_col).compact.uniq  rescue ""
    raw_objects = raw_object_one + raw_object_two + raw_object_three + raw_object_four
    grouped_objects = raw_objects.reject{|e| e.empty?}.compact.group_by{|every| raw_objects.compact.count(every)}.reject{|k,v| !(k>1)}
  end
end
