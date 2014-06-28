require_relative 'config/environment'

class NewsApp < Sinatra::Base
  get '/' do

    @rate = HYBondNews.t_rate
    @news = HYBondNews.bond_news

    @main_title = @news.split("\n")[1].strip

    @title1 = @news.split("\n")[3].strip
    @article1 = @news.split("\n")[4].strip.gsub("\u0092","'")

    @title2 = @news.split("\n")[6].strip
    @article2 = @news.split("\n")[7].strip.gsub("\u0092","'")

    @title3 = @news.split("\n")[9].strip
    @article3 = @news.split("\n")[10].strip.gsub("\u0092","'")

    erb :bond_news 
  end
end