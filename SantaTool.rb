class SantaTool

  def generate_match(users)
	matching_list = Array.new
	remaining_users = users.clone
	i = 0
	matching = ""
	while i < users.length  do
	  # Counter for the number of match. It must be a pair
	  count = 0
	  while remaining_users.length > 0
	  	 # Index to get random person and then remove it from the list	
	  	 ind = rand(remaining_users.length)
	  	 person = remaining_users[ind]	  
	  	 unless matching.include? person
	  	   if (count>0)
	  	     matching +=' - '
	  	   end
	  	   # Building the string of the Match "A-B"
	  	   matching += person
	  	   remaining_users.delete_at(ind)	 
	  	   count +=1	   
	  	    # If the string is ready add it to the final list
	  	   if count == 2 || remaining_users.length == 0
		     matching_list.push(matching)
		     matching = ''
		     count = 0
	  	   end
	  	 end
	  end	  	
      i +=1
    end
	matching_list
  end

end

game = SantaTool.new
p game.generate_match(['Ana', 'Beto', 'Carla', 'Diego', 'Pedro'])
#Output sample
#["Beto - Carla", "Pedro - Diego", "Ana"]
