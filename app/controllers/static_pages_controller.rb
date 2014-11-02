class StaticPagesController < ApplicationController
  def home
  	if(logged_in?)
  		redirect_to welcome_path
  	end
  	#if User.find_by(id: cookies.signed[:user_id])
  	#end
  end

  def help
  end

  def about
  end

  def login
  end
end
