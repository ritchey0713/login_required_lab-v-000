class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name] == ""
      redirect_to "/login"
    else
      current_user = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

end