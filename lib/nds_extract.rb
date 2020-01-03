require 'directors_database'

def directors_totals(nds)
  result = {}
  i=0
  while i < nds.size do

    total = gross_for_director(nds[i])

    result [nds[i][:name]]=total

    i +=1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(db)
  dir_hash = {}
  gross_for_director = 0
  j=0
  while j < db[:movies].size do
    gross_for_director += db[:movies][j][:worldwide_gross]

    j += 1
  end

  gross_for_director

  dir_hash[db[:name]] = gross_for_director
end
