class HomeController < ApplicationController

  skip_before_action :authenticate_request
  def ping
  end
end
