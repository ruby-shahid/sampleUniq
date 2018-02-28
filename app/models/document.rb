class Document < ApplicationRecord
	has_attached_file :file_one
	has_attached_file :file_two
	has_attached_file :file_tree
	has_attached_file :file_four
  validates_attachment_file_name :file_one, matches: [/\.pdf$/, /\.docx?$/, /\.xlsx?$/, /\.odt$/, /\.ods$/, /\.csv$/]
  validates_attachment_file_name :file_two, matches: [/\.pdf$/, /\.docx?$/, /\.xlsx?$/, /\.odt$/, /\.ods$/, /\.csv$/]
  validates_attachment_file_name :file_tree, matches: [/\.pdf$/, /\.docx?$/, /\.xlsx?$/, /\.odt$/, /\.ods$/, /\.csv$/]
  validates_attachment_file_name :file_four, matches: [/\.pdf$/, /\.docx?$/, /\.xlsx?$/, /\.odt$/, /\.ods$/, /\.csv$/]


  def get_dup_attributes
	 	raw_object_one = Roo::CSV.new(file_one.path).column(1).compact.uniq rescue nil
	 	raw_object_two = Roo::CSV.new(file_two.path).column(1).compact.uniq rescue nil
	 	raw_object_three = Roo::CSV.new(file_tree.path).column(1).compact.uniq rescue nil
	 	raw_object_four = Roo::CSV.new(file_four.path).column(1).compact.uniq  rescue nil
	 	raw_objects = raw_object_one + raw_object_two + raw_object_three + raw_object_four
	 	grouped_objects = raw_objects.compact.group_by{|every| raw_objects.compact.count(every)}.reject{|k,v| !(k>1)}
  end
end
