# module Paperclip
#   class MediaTypeSpoofDetector
#     def spoofed?
#       false
#     end
#   end
# end

# Paperclip::Attachment.default_options[:use_timestamp]    = false
# Paperclip::Attachment.default_options[:default_url]      = "/images/:style/missing.png"
# unless Rails.env.development? || Rails.env.test?
#   Paperclip::Attachment.default_options[:storage]          = :s3
#   Paperclip::Attachment.default_options[:s3_credentials]   = File.join(Rails.root, 'config', 's3.yml')
#   Paperclip::Attachment.default_options[:s3_protocol]      = 'https'
#   Paperclip::Attachment.default_options[:s3_region]      = 'us-east-1'
# end

# if Rails.env.staging?
#   temp_path = '/staging/:class/:attachment/:id_partition/:style/:filename'
#   Paperclip::Attachment.default_options[:url] = temp_path
#   Paperclip::Attachment.default_options[:path] = temp_path
# end

# module Paperclip
#   # do not require any validations
#   REQUIRED_VALIDATORS = []

#   # do not complain when missing validations
#   class Attachment
#     def missing_required_validator?
#       false
#     end
#   end

#   # skip media type spoof detection
#   module Validators
#     class MediaTypeSpoofDetectionValidator < ActiveModel::EachValidator
#       def validate_each(record, attribute, value)
#         true
#       end
#     end
#   end

# end
