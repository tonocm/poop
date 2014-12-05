class SessionsController < ApplicationController

require 'open-uri'

  def new
    if logged_in?

      base_uri = 'https://hacker-news.firebaseio.com/v0/'

      firebase = Firebase::Client.new(base_uri)

      response = firebase.push("todos", { :name => 'Pick the milk', :priority => 1 })
      response.success? # => true
      response.code # => 200
      response.body # => { 'name' => "-INOQPH-aV_psbk3ZXEX" }
      response.raw_body # => '{"name":"-INOQPH-aV_psbk3ZXEX"}''

      redirect_to welcome_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to welcome_path
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
