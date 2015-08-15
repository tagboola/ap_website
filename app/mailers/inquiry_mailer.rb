class InquiryMailer < ActionMailer::Base
  default from: 'no-reply@apwebconsulting.com'

  def inquiry_created(inquiry)
    @inquiry = inquiry
    mail(to: 'inquiries@apwebconsulting.com', subject: 'New inquiry received')
  end
end
