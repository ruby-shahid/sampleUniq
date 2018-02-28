class Document < ApplicationRecord
	has_attached_file :file_one
	has_attached_file :file_two
	has_attached_file :file_three
	has_attached_file :file_four
	# validates_attachment :file_one, content_type: { content_type: ["file_one/csv"] }
	do_not_validate_attachment_file_type :file_one

end
