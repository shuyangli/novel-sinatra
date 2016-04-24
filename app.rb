require 'sinatra'
require 'json'

require_relative 'view_helpers'

class NovelApp < Sinatra::Base

  helpers ViewHelpers

  get '/' do
    @book_data ||= JSON.parse(File.read("public/data/book_data.json"))
    erb :index
  end

  get '/shelf/:shelf_id' do
    @book_data ||= JSON.parse(File.read("public/data/book_data.json"))

    @shelf_id = params["shelf_id"]
    @shelf_books = @book_data[params["shelf_id"]]
    erb :shelf
  end

end
