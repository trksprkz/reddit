# Ensumerable Methods:
  # DRY (Don't Repeat Yourself)
    # Make things re-usable

  # Ensumerables are built-in methods that are included in both arrays and hashes


  # Select Method -
    #Returns the item which satisifes a given condition in the block

    # friends = ['Shaea', 'Leo', 'Lebron', 'Marcus', 'Caitlyn']
    # friends.select { |friends| friend != 'Marcus' }

    #Basically selects the friends variable and iterates through the array except for
    # the name Marcus.

    #Alternatively I can use the #reject method written the exact same way




  # Each Method -
    #The Each Method can be used for lots of things. It'll iterate through an array
    # and will give each element it's own code block

    # games = ['League Of Legends', 'Apex Legends', 'Genshin Impact']
    # games.each { |games| puts "These are my go to games, " + games}

    # Returns => These are my go to games, League Of Legends
                # These are my got to games, Apex Legends    (and so on)

    # its best to use Do and End when doing multi line code blocks instead of curly braces {}
      # my_array = [11,33]
      # my_array.each do |num|
      # num *= 2
      # puts "The new number is #{num}."
      # end

    # The Each Method also works with Hashes (like most things)
      #With Hashes #each will yield both the key and value
        # I set up the key and value pair and an operation of my choice to be returned

     # my_hash = { "one" => 1, "two" => 2 }

     # my_hash.each { |key, value| puts "#{key} is #{value}" }
      # => { "one" => 1, "two" => 2}

      # my_hash.each { |pair| puts "the pair is #{pair}" }
      # => { "one" => 1, "two" => 2}





  # The Each_with_index Method -
    # Nearly the same as #each but yields two block variables instead of one as it iterates
      # through an array.
    # The first variable's value is the element itself, while the second value is the index.

      # countries_lived_in = ["United States", "Thailand"]
      # countries_lived_in.each_with_index { |countries_lived_in, index| puts countries_lived_in if index.even? }




  # The Map Method -
    # Often also called #collect transforms each element from an array to
    # Whatever block you pass to it, returning the transformed elements in a new array

    # The following example would make an uppercase array of the items in the success array
      # success = ['Forever Relationship', 'Meditation', 'Programmer', 'Exercise', 'Stretch', 'Facial', 'Striving for growth']
      # success.map { |success| success.upcase }

    # The #gsub method -
    # Used on strings to replace all instances of a certain character or word.
      # mcdonalds_order = ['Medium Big Mac', 'Medium Fries', 'Medium Milkshake']
      #mcdonalds_order.map { |item| item.gsub('Medium', 'Extra Large') }




  # The Select Method -
    # The #select method or sometimes called #filter passes every item in an array to a block,
    # returning a new array with the items that passed a condition.

    # The following example would make a new array of every value that != is NOT Malphite
      # artists = ['Frank Ocean', 'A$AP Rocky', 'Malphite']
      # artists.select { |artist| artist != 'Malphite' }

    # The same example but with hash
      # artists_songs = {'Frank Ocean' => 'Nights',
      # 'A$AP Rocky' => 'Goldie',
      # 'Malphite' => 'League Of Legends' }

      #artists_songs.select { |artist| what_song| what_song != 'League Of Legends' }



  # The Reduce Method -
    # Reduce Method (also called #inject) reduces an array or hash to a single object.
      # array_of_numbers = [1,2,3,4]
      # array_of_numbers.reduce { |sum, number| sum + number }

        # Although it may not seem like it, it adds up all the numbers in the array.




  # Bang Methods -
    # Adding an exclamation point at the end of a #map! or #select! (etc.) saves the changes done to an
    # array.
      # It's best practice to not use these, but they're good to know.



  # Return Values of Ensumerables -
    # This is the better option to use over Bang Methods

    #The following example would create a Method (or function) with an argument of friends
    # which initializes the #select method to include any value that isn't != Blake

      # friends = ['Castor', 'Mark', 'Blake']
      # def real_friends(friends)
      # friends.select { |friend| friend != 'Blake' }
      # end

      #invited_friends(friends)


