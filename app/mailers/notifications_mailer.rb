class NotificationsMailer < ApplicationMailer

  default from: "jenilee.hsu@gmail.com"

  def notification_email(milestone_id)
    @email_addresses = Milestone.find(milestone_id).kid.emails.pluck[:email_address]
    @kid = Milestone.find(milestone_id).kid
    mail to: @email_addresses,
  end

end
