class TabsController < ApplicationController

  def create

    tab = Tab.create({
      :user_uuid => params[:user_uuid],
      :tab_id => params[:tab_id],
    })

    return render :json => {}, :status => 201 if tab.valid?
    render :json => tab.errors, :status => 400
  end

end