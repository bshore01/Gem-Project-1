require "open-uri"
require "pry"
require "nokogiri"


html = open("http://www.federalreserve.gov/releases/h15/current/").read

doc = Nokogiri::HTML(open("http://www.federalreserve.gov/releases/h15/current/"))

#ten_year_rate, fed reserve website 
puts "The latest 10 year treasury rate is" + doc.search("td")[271].text+"%"


# HY Bonds new, leveraged finance website
html =open("http://www.leveragedfinancenews.com/section/high_yield_bonds.html").read
doc2 = Nokogiri::HTML(open("http://www.leveragedfinancenews.com/section/high_yield_bonds.html"))

puts ""
puts "HY Bond News"
puts doc2.search("h4")[0].text
puts doc2.search("div#contentWrap p")[0].text
puts ""
puts doc2.search("h4")[1].text
puts doc2.search("div#contentWrap p")[1].text
puts ""
puts doc2.search("h4")[2].text
puts doc2.search("div#contentWrap p")[2].text
puts ""