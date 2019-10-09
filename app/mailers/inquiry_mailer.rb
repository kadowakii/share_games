class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'system@example.com',
      to:   ENV['GMAIL_ADDRESS'],
      subject: 'YOUTUBER REVIEWS お問い合わせ'
    )
  end
end
