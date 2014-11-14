class SessionsController < ApplicationController
  def new
  end

  def create
  	foodie = Foodie.find_by(email: params[:email])
  	if foodie && foodie.authenticate(params[:password])
  		session[:foodie_id] = foodie.id
  		redirect_to '/foodies/#{@foodie.id}', notice: "Logged in!" #how to get the path to show a single url
  	else 
  		render "new"
  	end
  end

  def destroy
  	session[:foodie_id] = nil
  	redirect_to foodies_path notice: "Logged out!"
  end
end

