class UrlsController < ApplicationController
  def show
    @url = Url.find_by_short_url(params[:id])
    @url.counter += 1
    @url.save
    redirect_to  ("http://" + @url.long_url)
  end
  
  def create
    @url = current_user.urls.build(params[:url])
    @url.make_short_url
    if @url.save
      flash[:success] = "New url created!"
      redirect_to user_path(current_user)
    end
  end
  
  def destroy
    url = Url.find(params[:id])
    url.destroy
    redirect_to user_path(current_user)
  end
  
  def edit
    @url = Url.find(params[:id])
  end
  
  def update
    @url = Url.find(params[:id])
    if @url.update_attributes(params[:url])
      flash[:notice] = "Link updated"
    end
     redirect_to user_path(current_user)
  end
    
end
