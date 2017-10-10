class LightapiController < ActionController::API

	def reset
		l=Light.first
		l.red=250
		l.blue=0
		l.green=0
		l.status=true
		l.save
	end

	def change
		l=Light.first
  	    red=params["red"]
  	    blue=params["blue"]
  	    green=params["green"]
  	    l.red=red
  	    l.green=green
  	    l.blue=blue
  	    l.save
  	end


  	def on
  		l=Light.first
  		l.status=true
  		l.red=250
		l.blue=0
		l.green=0
  		l.save
  	end


    def off
    	l=Light.first
    	l.status=false
        l.save
    end




end
