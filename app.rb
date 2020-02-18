require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end 

  get "/multiply/:num1/:num2" do 
    number_1 = params[:num1]
    number_2 = params[:num2]
    @product = number_1.to_f * number_2.to_f
    "#{@product}"
  end 
end