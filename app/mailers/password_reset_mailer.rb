class PasswordResetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_reset_mailer.reset_password_email.subject
  #
  def reset_password_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
