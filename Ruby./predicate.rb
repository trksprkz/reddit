# Predicate Enumerable Methods:

    # Predicate method is indicated by a ? question mark
      # Returns either True or False


  # The Include Method -
    # Checks if a value or element exists in an array.

    # The following example would evaluate to true, as 6 is included in the array
      # number = [2,4,6,8]
      # numbers.include?(6)


  # The any? Method -
    # Displays True or False based on if an array or hash includes a specified condition

    # numbers = [21,11,43,423423]
    # numbers.any? { |number| number < 500}


  # The all? Method -
    # The all method returns true if all the elements match the comdition. otherwise
    # returns false.

    # cook = ["Rattatoulie", "Spongebob", "Bob's Burgers", "That one taco shop on wheels"]
    # cook.all? { |cook| cook != 'Spongebob' }


  # The none? Method -
    # none? is the opposite of all?.
