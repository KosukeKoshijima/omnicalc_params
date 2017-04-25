Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:the_number", { :controller => "calculation", :action => "flex_square" })
  get("/flexible/square_root/:the_number", { :controller => "calculation", :action => "flex_square_root" })
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculation", :action => "payment_calculation" })
  get("/flexible/random/:min/:max", { :controller => "calculation", :action => "random" })

  get("/square/new", { :controller => "calculation", :action => "square_form" })
  get("/square/results", { :controller => "calculation", :action => "square" })

  get("/square_root/new", { :controller => "calculation", :action => "square_root_form" })
  get("/square_root/results", { :controller => "calculation", :action => "square_root" })

  get("/payment/new", { :controller => "calculation", :action => "payment_form" })
  get("/payment/results", { :controller => "calculation", :action => "payment" })

  get("/random/new", { :controller => "calculation", :action => "random_form" })
  get("/random/results", { :controller => "calculation", :action => "random_result" })



end
