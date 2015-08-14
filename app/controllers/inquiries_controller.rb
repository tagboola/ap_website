class InquiriesController < ApplicationController
  layout 'pages'

  # GET /inquiries/1
  def show
    @inquiry = Inquiry.find(params[:id])
  end

  # POST /inquiries
  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      InquiryMailer.inquiry_created(@inquiry).deliver
      redirect_to @inquiry
    else
      redirect_to root_path, flash: { inquiry_params: inquiry_params, inquiry_errors: @inquiry.errors.full_messages }
    end
  end


  private

  # Only allow a trusted parameter "white list" through.
  def inquiry_params
    params.require(:inquiry).permit(:first_name, :last_name, :email, :message)
  end
end
