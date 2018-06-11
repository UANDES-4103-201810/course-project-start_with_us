class PaymentsController < ApplicationController
  def promises
    @credit_card = CreditCard.new

  end
  def fund
    @project = params[:id]
    @credit_card = CreditCard.new
  end

  def pay
    @project = Project.find(params[:project])
    @user = @project.user
    @fund = Founding.create(user_id: current_user.id, project_id: @project.id, state:"waiting", mount: params[:ammount])
    MailerMailer.with(user: @user.id, user_solitude: current_user.id, project: @project.id).fund_mail.deliver_later
    flash[:fund_request] = "Your fund request was sended!"
    redirect_to "/"
  end
end
