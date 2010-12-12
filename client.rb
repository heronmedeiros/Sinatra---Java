require 'rubygems'
require 'savon'
#include 'inc'
client = Savon::Client.new "http://localhost:8080/axis/Hello.jws?wsdl"
  
response = client.somar { |soap| soap.body = { 'a' => 2*36, 'b'=>10 }  }

valor =  response.to_hash

#:somar_response = 

puts "\n\n\n\n\n\n\n\n\n\n o retorno do ws eh #{valor[:somar_response][:somar_return].to_i}"
























#teste[:somar_response].each_key do |k|
#	p teste[:somar_response][k] 
#end

