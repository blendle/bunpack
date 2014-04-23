require 'base64'

Given /^the following base64 encoded (.*) archive:$/ do |extension, data|
  File.open "tmp/aruba/archive.#{extension}", 'w' do |file|
    file.write Base64.decode64 data
  end
end

