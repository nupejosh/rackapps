class MyRackMiddleware
	def initialize(app1)
		@app1 = app1
	end 
	def call(env) 
		status, headers, body = @app1.call(env) #calling the inner application	
		append_s = "... hello sucker!!"
		new_body = ""
		body.each { |string| new_body << " " << string } 
	      	new_body << append_s
		return [status, headers, [new_body]] 	
	end
end
