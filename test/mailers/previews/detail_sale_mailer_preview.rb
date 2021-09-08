# Preview all emails at http://localhost:3000/rails/mailers/detail_sale_mailer
class DetailSaleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/detail_sale_mailer/notify_ended
  def notify_ended
    DetailSaleMailer.notify_ended
  end

end
