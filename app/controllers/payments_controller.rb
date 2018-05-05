class PaymentsController < ApplicationController
  def promises
    @credit_card = CreditCard.new

  end
  def fund
    @credit_card = CreditCard.new
  end

  def pay

  end
end
