require 'rubygems'
require 'savon'
require 'sinatra'

#================================================================================================
#=========================Configuracao do web service============================================
#================================================================================================
client = Savon::Client.new "http://localhost:8080/axis/Hello.jws?wsdl"
  

#================================================================================================



#================================================================================================
#=========================Configuracao do sinatra================================================
#================================================================================================
get "/" do
	erb :index
end
post "/processa" do
	valor1 = params[:post][:valor1]
	valor2 = params[:post][:valor2]
		
	
	
	response = client.somar do  |soap| 
		soap.body = { :a => valor1, :b =>valor2 }  
	end

	valor =  response.to_hash
	session["resultado"] = response
	erb :result
end

get "/webservice" do
	session["valor"] = valor[:somar_response][:somar_return].to_i
	erb :wservice
end

get "/xml" do
	"#{response}"
end
#================================================================================================


#protected 
#def callWebService()
#	;
#end