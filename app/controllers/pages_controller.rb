class PagesController < ApplicationController
 layout 'pages'

  def index
    @inquiry_errors = flash[:inquiry_errors]
    @inquiry = Inquiry.new(flash[:inquiry_params])
  end

  def show
    render params[:id]
  end
end
