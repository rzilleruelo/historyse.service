class EventsController < ApplicationController

  def create
    events_params = []
    if params[:source] == 'tab'
      events_params << {
        :user_uuid => params[:user_uuid], :tab_id => params[:tab_id], :source => 'tab_unselected'
      } if params[:last_tab_id].present?
      events_params << { :user_uuid => params[:user_uuid], :tab_id => params[:tab_id], :source => 'tab_selected' }
    else
      events_params << { :user_uuid => params[:user_uuid], :tab_id => params[:tab_id], :source => params[:source] }
    end
    events = Event.create(events_params)
    invalid_events = events.reject(&:valid?)
    return render :json => {}, :status => 201 if invalid_events.length == 0
    render :json => invalid_events.collect(&:errors), :status => 400
  end

end
