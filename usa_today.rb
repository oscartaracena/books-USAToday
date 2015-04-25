require 'httparty'

#this code can be used if you want user to enter the details.
#puts "Enter a year you wanna search:"
#year = gets.chomp
#puts "Enter a month you want to search:"
#month = gets.chomp
#puts "Enter the date:"
#date = gets.chomp
#puts "Enter the amount you want to return:"
#count = gets.chomp

#API call to USA today
url = "http://api.usatoday.com/open/bestsellers/books/booklists?year=2015&month=4&date=2&count=30&encoding=json&api_key=k9graaup3gg9vqdnzfuwr8z5"
response = HTTParty.get(url)
books = response.parsed_response
#testing variable
#puts "#{books}"
puts "#{url}" # testing the to make sure the URL is printed out
#create the arrays from the parsed information
books_list = books['BookLists'][0]['BookListEntries']
#puts "#{books_list}"
books_list1 = books['BookLists'][0]['BookListEntries'][2]['Class']['Fiction']
#puts "#{books_list1}"
books_list.each do |rank|
  #puts rank['Rank']
end
#loops to print out the information
books_list.each_with_index do |rank, index|
  puts "#{index + 1}: #{rank['Title']} - #{rank['Author']}\n #{rank['BriefDescription']}\n"
end

#rank = 20
puts"---------------------------------------------------"
begin
books_list.each_with_index do |rank, index|
  #if rank['Class']['Fiction']
#loops to print out only titles of with class of fiction
   puts "#{index + 1}: #{rank['Title']} - #{rank['Author']}\n #{rank['BriefDescription']}\n #{rank['Class']['Fiction']}\n"
  #else
  #end
end
end
