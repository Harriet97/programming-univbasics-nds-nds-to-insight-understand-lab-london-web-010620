$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp directors_database
end

pretty_print_nds(directors_database)

def print_first_directors_movie_titles
  counter = 0 
    while directors_database[0][:movies][counter] do 
      movie_titles = directors_database[0][:movies][counter][:title]
      puts movie_titles
      counter += 1
    end
end