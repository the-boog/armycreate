class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def main
    render 'layouts/main'
  end

end
