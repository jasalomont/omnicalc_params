class CalculationsController < ApplicationController

  def flexible_square_5

  @user_num = params["number"].to_f #params = default name that ruby gives the :number
    render("calculations/flexible_square_5.html.erb")
  end

  def flexible_square_root

  @user_num = params["number"].to_f #params = default name that ruby gives the :number
    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment

  @user_rate = params["number1"].to_f
  @user_years = params["number2"].to_i
  @user_loan = params["number3"].to_f

  @payment = @user_rate*@user_loan /(1-(1+@user_rate)**(-@user_years))

    render("calculations/flexible_payment.html.erb")
  end
def flexible_random
  @user_low = params["number1"].to_i
  @user_high = params["number2"].to_i
  @random_result = rand(@user_low...@user_high)
  render("calculations/flexible_random.html.erb")
end

  def square
    @user_num = params[:user_num].to_f
    render("calculations/square.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end


end
