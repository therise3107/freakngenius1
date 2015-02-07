class Mailer < ActionMailer::Base
  default from: ENV["gmail_user"]
  def confirmation_instructions(user)
  	@user = user
  	mail(to: @user.email, subject: 'Account confirmation_instructions')
  end
  def reset_password_instructions(user)
  	@user = user
  	mail(to: @user.email, subject: 'reset_password_instructions')
  end
  def unlock_instructions(user)
  	@user = user
  	mail(to: @user.email, subject: 'unlock_instructions')
  end

end