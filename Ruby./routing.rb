# - Routing -
  # Rooter is like the doorman of the application
  # When an HTTP request arrives from the user’s browser, it needs to know which
  # controller action (method) should be run.

  # The Router is basically just a matching service.
  # It looks at the HTTP verb (GET, POST, PUT, DELETE) and the URL
  # that is being requested and matches it with the appropriate controller action to run.

  # when a request enters your application is that Rails grabs all the parameters
  # that came with it and makes them available for you in a special hash called params



  # Root -
    # The most important (and simplest) route, where should users be deposited when
    # they land on the root url (example: http://google.com)

    #Example:
      #  root to: "Google#index"



  # RESTful Routes -
    # The 7 main ways to do something (with GET, POST, PUT, and DELETE) as discussed earlier

    # How to implement them in Rails:
      # get "/posts", to: "posts#index"
      # get "/posts/new", to: "posts#new"
      # get "/posts/:id", to: "posts#show"
      # post "/posts", to: "posts#create"  # usually a submitted form
      # get "/posts/:id/edit", to: "posts#edit"
      # put "/posts/:id", to: "posts#update" # usually a submitted form
      # delete "/posts/:id", to: "posts#destroy"

      #Each route is basically a Ruby method that matches that particular URL and HTTP verb
      # with the correct controller action.

      #NOTE:
        #Several of those routes submit to the SAME URL… they just use different HTTP verbs,
        # so Rails can send them to a different controller action.
        # That trips up a lot of beginners.

      #NOTE:
        #The other thing to notice is that the “id” field is prepended by a colon…
        #that just tells Rails “Look for anything here and save it as the ID in the
        #params hash”. It lets you submit a GET request for the first post and the fifth
        #post to the same route, just a different ID


  # RESTful Routes with Rails -
    # Rails is setup to use the 7 actions, so built-in is a helper method.
    #this allows all 7 to be written in one line instead...
      # resources :posts      (written in the config/routes.rb)

      # typing -> rails routes into the terminal outputs all routes

    # In situations where you want to retrieve a URL for a route, use the helper link_to
    #method.
    # You'll need to supply text to show, and a URL to link it to:
      # Example:
        # link_to 'Edit comment", edit_post_path(3)


    # Rails generates helper methods for all of the routes: _path, _url, path, url


