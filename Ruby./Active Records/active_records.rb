# - Active Records - 
  
  # ORM: 
    # Object-Relational-Mapping
    # Takes data which is stored in a database table using rows and columns. Modified and 
    #retrieved with SQL.

    # Allows writing with Ruby
      # Instead of SELECT * FROM users
        # User.all
    
   
  # Rails Models: 
    # Say you want to store info about your users, create a database table called users. 
    # Create a model called User, which is an Active Record (meaning it gets all,find,create)
    
      u = User.new(name: "Juan", email: 'juanjuanito@company.com')
        # Creates database using User.new, however it only stores in memory. Doesn't save
      u = User.create(name: "Juan", email: "JuanTheOne@number1.com")
        # This would create, and save all in one.
        # Sometimes it's better to create and save after. Using User.new and User.save

