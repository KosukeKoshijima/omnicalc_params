class CalculationController < ApplicationController

def flex_square

@user_provided_number = params["the_number"].to_f
@squared_number = @user_provided_number ** 2

render("calculation/calculation.html.erb")
end

def flex_square_root
  @user_provided_number = params["the_number"].to_f
  @squared_root_number = Math.sqrt(@user_provided_number).round(2)

render("calculation/flex_square_root.html.erb")

end

def payment_calculation
  @user_provided_bp = params["basis_points"].to_f
  @user_provided_years = params["number_of_years"].to_f
  @user_provided_pv = params["present_value"].to_f

@monthly_payment = ((@user_provided_bp / 12 / 100 / 100 * @user_provided_pv) / (1 - ((1 + @user_provided_bp / 12 / 100 / 100) ** ((-1) * @user_provided_years * 12)))).round(2)

render("calculation/payment_calculation.html.erb")
end

def random
  @user_provided_min = params["min"].to_f
  @user_provided_max = params["max"].to_f
  @randome_number = rand(@user_provided_min..@user_provided_max)

render("calculation/random_number.html.erb")
end



def square_form
render("calculation/square_form.html.erb")
end

def square
  @user_provided_number = params["number_to_be_squared"].to_f
  @squared_number = @user_provided_number ** 2
render("calculation/square.html.erb")
end

def square_root_form
render("calculation/square_root_form.html.erb")
end

def square_root
  @user_provided_number = params["number_to_be_rooted"].to_f
  @squared_root_number = Math.sqrt(@user_provided_number).round(2)

render("calculation/square_root.html.erb")
end

def payment_form
render("calculation/payment_form.html.erb")
end

def payment
  @user_provided_bp = params["user_apr"].to_f
  @user_provided_years = params["user_years"].to_f
  @user_provided_pv = params["user_pv"].to_f

@monthly_payment = ((@user_provided_bp / 12 / 100 / 100 * @user_provided_pv) / (1 - ((1 + @user_provided_bp / 12 / 100 / 100) ** ((-1) * @user_provided_years * 12)))).round(2)

render("calculation/payment.html.erb")

end


end
