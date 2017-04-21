class CalculationController < ApplicationController

def flex_square

@user_provided_number = params["the_number"].to_f
@squared_number = @user_provided_number ** 2

render("calculation/calculation.html.erb")
end
end
