class HomeController < ApplicationController
  
  def index

    puts "coming to home"
    puts session[:user_id]

    if session[:user_id].present?
    	@user = User.find(session[:user_id])
    elsif current_user.present?
    	@user = current_user
    end

  end

end
