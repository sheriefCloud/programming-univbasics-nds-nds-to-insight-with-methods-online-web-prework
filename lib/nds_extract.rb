require 'directors_database'

def directors_totals(nds)
  result = {}
  i=0
  while i < nds.size do
    director = i
    name = nds[director]
    total = gross_for_director(nds,director)

    result [nds[i][:name]]=total

    i +=1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds,director)
  dir_hash = {}
  gross_for_director = 0
  j=0
  while j < nds[director][:movies].size do
    gross_for_director += nds[director][:movies][j][:worldwide_gross]

    j += 1
  end
  
  gross_for_director

  dir_hash[nds[director][name]] = gross_for_director
end
