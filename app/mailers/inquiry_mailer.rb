class InquiryMailer < ActionMailer::Base
  default from: 'no-reply@apwebconsulting.com'

  def inquiry_created(inquiry)
    @inquiry = inquiry
    mail(to: 'apwebconsulting@gmail.com', subject: 'New inquiry received')
  end
end
