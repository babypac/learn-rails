class UserMailer < ApplicationMailer
  default from: "taek171@daum.net"

  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
