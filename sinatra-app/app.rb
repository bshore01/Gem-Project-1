require_relative 'config/environment'


class NewsApp < Sinatra::Base
  get '/' do
    @hybondnews = hybondnews
    erb :bond_news 
  end
end