class EventsController < ApplicationController

  def create
    event = Event.create({
      :user_uuid => params[:user_uuid],
      :tab_id => params[:tab_id],
      :source => params[:source]
    })
    return render :json => {}, :status => 201 if event.valid?
    render :json => event.errors, :status => 400
  end

end
