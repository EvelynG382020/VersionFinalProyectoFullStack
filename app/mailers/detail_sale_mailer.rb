class DetailSaleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.detail_sale_mailer.notify_ended.subject
  #
  def notify_ended(notify)
    @correo = Notify.find(notify.id)
    @greeting = "NOTIFICACIÓN DE #{notify.name_user}"
    mail(to: "evelyngomezfrez@gmail.com", subject: @greeting)
  end
end

