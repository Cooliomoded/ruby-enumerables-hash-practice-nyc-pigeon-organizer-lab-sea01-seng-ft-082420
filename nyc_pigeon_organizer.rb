
def nyc_pigeon_organizer(data)
  pigeon_names = data.each_with_object({}) do |(keys, values_hash), pigeon_array|
    values_hash.each do |inner_keys, name_value_array|
      name_value_array.each do |name|
        if !pigeon_array[name]
          pigeon_array[name] = {}
        end
        if !pigeon_array[name][keys]
          !pigeon_array[name][keys] = []
        end
        pigeon_array[name][keys].push(inner_keys.to_s)
      end
    end
  end
end

#def nyc_pigeon_organizer(data)
  #create a new hash for the names of the pigeons
  #pigeon data, a hash of hashes, must be iterated over it's three keys, pigeon_attributes of the birds
  #called :color, :gender, and :lives, all of which are hashes of arrays.
  #and their values,attribute_names that are keys that point to arrays_of_names.
    #we must iterate over the keys and each of their name values,
    #taking the names of each of the pigeons and putting them in to a new hash.
      #then we must put 3 keys in each of those hashes, which are the same as pigeon_attributes
      #and contain an array that is equal to the attribute_names for each birds that turns them in to a string.
  #print the new hash
#end

#Ruby remove duplicate entries in array of hashes but based on more than one value
#Suppose you have the following array of hashes:

#new_tracks = [
#  { :name=>"Yes, Yes, Yes",
#    :artist=>"Some Dude",
#    :composer=> 'First Dude',
#    :duration=>"3:21"
#  },
#  { :name=>"Chick on the Side",
#    :artist=>"Another Dude",
#    :duration=>"3:20"
#  },
#  { :name=>"Luv Is",
#    :duration=>"3:13"
#  },
#  { :name=>"Yes, Yes, Yes",
#    :artist=>"Some Dude",
#    :composer=> 'First Dude',
#    :duration=>"2"
#  },
#  { :name=>"Chick on the Side",
#    :artist=>"Another Dude"
#  }
#]

#uniq accepts a block. If a block is given, it will use the return value of the block for comparison.
#You can join the attributes you want into a string and return that string.

#new_tracks.uniq { |track| [track[:name], track[:artist]].join(":") }

#The resultant of above code will be an array of hashes unique on the basis of name and artist attributes.

#Konstantin Haase says:
#October 18, 2011 at 2:09 am
#Also, on 1.9, it will check if a constant is defined. So this

#Foo ||= 42

#Translates roughly into this:

#if defined? Foo
#  Foo || Foo = 42
#else
#  Foo = 42
#end
