class DoorapiController < ActionController::API

	def edit
  	content=params["status"]
  	d=Door.first
  	d.status=content
  	d.save
  	data={}
    data["message"]="edited"
    render json:data
end

  def currentstatus
  	d=Door.first
  	status = d.status
  	data={}
    data["message"]=status
    render json:data
end 


end
