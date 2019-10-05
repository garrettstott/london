class HomeController < ApplicationController

  def index
    # flash[:notice] = 'Notice'
    # flash[:alert] = 'Alert'
    # flash[:success] = 'Success'
    # flash[:error] = 'Error'
    flash.clear
  end

end
