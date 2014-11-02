class StaticPagesController < ApplicationController
  def home
  	if(logged_in?)
  		redirect_to welcome_path
  end

  def help
  end

  def about
  end

  def login
  end
end
