class ContentsController < ApplicationController

def test

end

def new
  @content = Content.new
end
 
def create
  @content = Content.new(content_params)
 
  if @content.save
    redirect_to welcome_path
  else
    render 'welcome'
  end
end
 
#private
 # def content_params
  #  params.require(:article).permit(:title, :text)
#end