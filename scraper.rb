require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".v2__site-hero__headline").text

students = doc.css(".heading--level-2")

puts students

students.each do |i|
  puts "Flatiron School <3 " + i.css("h2").text
end
