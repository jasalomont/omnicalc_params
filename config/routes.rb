Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/flexible/square/:number",{:controller => "calculations", :action => "flexible_square_5"})
get("/flexible/square_root/:number",{:controller => "calculations", :action => "flexible_square_root"})
get("/flexible/payment/:number1/:number2/:number3",{:controller => "calculations", :action => "flexible_payment"})
get("/flexible/random/:number1/:number2",{:controller => "calculations", :action => "flexible_random"})

get("/square/new", {:controller => "calculations", :action => "square_form"})
get("/square/results", {:controller => "calculations", :action => "square"})
#Square Root Form
get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
get("/square_root/results", {:controller => "calculations", :action => "square_root"})
#Payment Form
get("/payment/new", {:controller => "calculations", :action => "payment_form"})
get("/payment/results", {:controller => "calculations", :action => "payment"})

#Random Form
get("/random/new", {:controller => "calculations", :action => "random_form"})
get("/random/results", {:controller => "calculations", :action => "random"})

#Main Page
get("/", {:controller => "calculations", :action => "view"})
end
