class CalculationsController < ApplicationController

def view
  render("layouts/View.erb")
end

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
  @user_years = params["number2"].to_f
  @user_loan = params["number3"].to_i

  @payment =((@user_rate/12/10000)*@user_loan) /(1-((1+@user_rate/12/10000)**(-@user_years*12)))

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
#Square Root Form
  def square_root
    @user_num = params[:user_num].to_f
    render("calculations/square_root.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end
#Payment Form
def payment
  @user_apr = params[:user_apr].to_f
  @user_years = params[:user_years].to_f
  @user_principal = params[:user_principal].to_f
  render("calculations/payment.html.erb")
end

def payment_form
  render("calculations/payment_form.html.erb")
end

#Random Form
def random
  @user_min = params[:user_min].to_f
  @user_max = params[:user_max].to_f
  @random_result = rand(@user_min...@user_max)
    render("calculations/random.html.erb")
end

def random_form
  render("calculations/random_form.html.erb")
end


end
