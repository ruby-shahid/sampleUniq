module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end
Paperclip::Attachment.default_options[:use_timestamp]    = false
Paperclip::Attachment.default_options[:default_url]      = "/images/:style/missing.png"
temp_path = '/development/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:storage]          = :s3
Paperclip::Attachment.default_options[:s3_credentials]   = File.join(Rails.root, 'config', 's3.yml')
Paperclip::Attachment.default_options[:s3_protocol]      = 'https'
Paperclip::Attachment.default_options[:s3_region]      = 'us-east-1'
Paperclip::Attachment.default_options[:url] = ":s3_domain_url"
Paperclip::Attachment.default_options[:path] = temp_path

