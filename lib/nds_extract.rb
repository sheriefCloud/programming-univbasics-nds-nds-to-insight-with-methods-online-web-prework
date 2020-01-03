require 'directors_database'

def directors_totals(nds)
  result = {}
  i=0
  while i < nds.size do
    director = i

    gross_for_director(nds,director)
    i +=1

  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds,director)
  total = 0
  i=0
  while i < nds[director][:movies][i].size do
    total += nds[director][:movies][i][:worldwide_gross]

    i += 1
  end
  result[director] = total
end
