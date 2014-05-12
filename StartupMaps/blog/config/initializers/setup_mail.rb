  ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: "youssefattaby1993@gmail.com",
    password: "19931018",
    enable_starttls_auto: true
  }
  ActionMailer::Base.default_url_options[:host] = "localhost:3000"
