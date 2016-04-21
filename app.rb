require 'sinatra'

require_relative 'view_helpers'

class NovelApp < Sinatra::Base

  helpers ViewHelpers

  helpers do
    def current_book_id(idx_row, idx_book, books_per_row)
      idx_row * books_per_row + idx_book
    end
  end

  get '/' do
    erb :index
  end

  get '/shelf' do
    erb :shelf
  end

end
