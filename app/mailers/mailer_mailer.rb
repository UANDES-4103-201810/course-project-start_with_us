class MailerMailer < ApplicationMailer


  def fund_mail
    @user_solitude = User.find(params[:user_solitude])
    @user = User.find(params[:user])
    @project = Project.find(params[:project])
    mail(to: @user.email, subject: 'Fund request')
  end
end
