class UrlsController < ApplicationController

  def create
    url = Url.create({
      :user_uuid => params[:user_uuid],
      :client_created_at => params[:client_created_at],
      :request_type => params[:request_type],
      :tab_id => params[:tab_id],
      :url => params[:url],
      :referer => params[:referer]
    })

    return render :json => {}, :status => 201 if url.valid?
    render :json => url.errors, :status => 400
  end

end
