# stollen from rack-cors Github

  Rails.application.config.middleware.insert_before 0, Rack::Cors do 
  allow do
    # this allows all urls to access this site
    origins '*'
    resource '*',
    :headers => :any,
    :methods => %i( get post push patch delete options head ) 
  end
end