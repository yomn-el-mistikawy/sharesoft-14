class TwitterShareController < ApplicationController

def auth
    
    cookies["title"] = { :value => "#{params[:title]}", :expires => 1.minute.from_now }
 
    cookies["url"] = { :value => "#{params[:url]}", :expires => 1.minute.from_now }


   consumer_key = "IMYwzpLuxGevpf5G0AKW6U7pN"
 
    consumer_secret = "MjvbW9panUeCtJIbScG9efhDBhDb8v4KzCU0O0AROyP94zSxDK"
    
    oauth_consumer = OAuth::Consumer.new(consumer_key, consumer_secret,

    	:site => 'http://api.twitter.com',
    	:request_endpoint => 'http://api.twitter.com',
    	:sign_in => true)
        r_token = session[:request_token]
        r_stoken = session[:request_token_secret]
        atoken = OAuth::RequestToken.new(oauth_consumer,r_token, r_stoken).get_access_token(:oauth_verifier => params[:oauth_verifier])
        Twitter.configure do |conf|
 
      conf.consumer_key = consumer_key
 
      conf.consumer_secret = consumer_secret
 
      conf.oauth_token = atoken.token
 
      conf.oauth_token_secret = atoken.secret
end 
Twitter.update("My new post on  #{cookies["title"]}  #{cookies["url"]}")
 
    redirect_to root_path


end
