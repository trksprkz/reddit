# - Controllers -

  # The controllers job is to act as the middleman, asking the Model but letting it
  #do all the hard work.

  # Hint why it's called a controller.

  # A controller gets used after an HTTP request comes in and the router decides which
  #controller and action to map it to. Then send it to your HTML template "View"




# Naming -
  # Rails assumes things are named a certain way for a reason & executes them based on
  #those names.
    # For instance, controller and action have to be named the same as routes.rb specifies


# Rendering and Redirecting -
  # Rails will implicitly render a view file that is named the same thing as your controller action, 
  #there are plenty of situations when you might want to override it. 

  # A main case for this is when you actually want to completely redirect the user to a new 
  #page instead of rendering the result of your controller action.

  

