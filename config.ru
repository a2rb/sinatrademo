require 'rubygems'
require 'bundler'

Bundler.require

require './sinatrademo'
app = SinatraDemo

#app =  lambda { |_| [200, { "Content-Type" => "text/plain" }, [ "Hello a2rb!", "yay!" ]] }

run app

