require 'sinatra/flash'

class ApplicationController < Sinatra::Base
  set :views, File.expand_path(File.join(__FILE__, '../../views'))

  configure do
    enable :sessions
    set :session_secret, 'super_secret'
    register Sinatra::Flash
  end
end
