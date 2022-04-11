class SharedUrlsController < ApplicationController
  def show
    redirect_to SharedUrl.find_by(key: params[:id]).original_url, allow_other_host: true, status: 302
  end
end
