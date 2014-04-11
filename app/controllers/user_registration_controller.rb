class UserRegistrationController < ApplicationController

  def new
    auth = request.env["omniauth.auth"]
    
    puts "auth details"
    puts auth.inspect

    @user_details = auth["extra"]["raw_info"]
    @provider = auth["provider"]

    puts "user_details"
    puts @user_details.inspect

    if @user_details["error_message"].present?
      flash[:alert] = @user_details["error_message"]
      redirect_to root_url
    end
    
  end

  def create

    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      puts session[:user_id]
      puts "--------------"
      
      sign_in user, :bypass => true
      flash[:notice] = "User has been added successfully"
      redirect_to root_url
    end

  end

end