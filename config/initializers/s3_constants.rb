Paperclip::Attachment.default_options[:url] = ':s3-us-west-2'
if Rails.env.development? || Rails.env.test?
  ENV['S3_HOST_NAME'] = "s3-us-west-2"
  ENV['S3_KEY'] = "AKIAJFDPL64FRKVDHWJQ"
  ENV['S3_SECRET'] = ""
  ENV['S3_BUCKET'] = 'game-picker-dev'
end
