class HomeController < ApplicationController

  def landing
    # flash[:notice] = 'Notice'
    # flash[:alert] = 'Alert'
    # flash[:success] = 'Success'
    # flash[:error] = 'Error'
    flash.clear
  end

end
