require 'sinatra'
require 'haml'
require './helpers/helpers'
require './helpers/sinatra'

include Helpers

enable :sessions

set :views, Proc.new { File.join(root, "views") }
set :public_folder, Proc.new { File.join(root, "public") }

get '/' do
  haml :index
end
