class AcapiController < ActionController::API



  def edit
  	content=params["status"]
  	a=Ac.first
  	a.status=content
  	a.save
  	data={}
    data["message"]="edited"
    render json:data
end


  def currentstatus
  	a=Ac.first
  	status = a.status
  	data={}
    data["message"]=status
    render json:data
end 


end
