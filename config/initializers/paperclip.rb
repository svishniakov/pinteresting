# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'pinzz.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'