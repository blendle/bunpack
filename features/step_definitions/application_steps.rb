require 'base64'

Given /^the following base64 encoded (.*) archive:$/ do |extension, data|
  write_file "archive." + extension, Base64.decode64(data)
end

