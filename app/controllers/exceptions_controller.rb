class ExceptionsController < ApplicationController
  def not_found
    render :json => '', :status => 404
  end
end