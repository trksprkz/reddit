# - HTTP - Hypertext Transfer Protocol:

  #It is the role of the browser—also called a client—to raise a request for this content.
  #The request is sent to a server, which in return sends a response back to the browser.


  # - HTTP Urls -
    https://www.domain.com:1234/path/to/resource?a=b&x=y

    #HTTPS - specifies the protocol whichh makes the communication secure
    www._____.com is the host
    1234 is the port
    path/to/resource is the resource path. Helps identify a specific resource
    ?a=b&x=y are string parameters. They're used by the server to spot the right resource



  # - HTTP Requests -
    # At the heart of web communications is the request message.

    # request line:
      #this says what is being requested. It consists of a verb, a path, and the HTTP version.
      #The HTTP verb says what action is requested of the host, e.g. to GET a resource or POST
      #form data.

    # headers:
      #additional information about the message, the requester, and the communication
      #format.

    # body (optional):
      #the content of the request. For a simple request for a static resource like a page,
      #this will be empty. For a form submission, this will contain the information
      #from the form. The body is separated from the headers by a blank line.


    # HTTP Request (Example) -
      GET /articles/http-basics HTTP/1.1
      Host: www.articles.com
      Connection: keep-alive
      Cache-Control: no-cache
      Pragma: no-cache
      Accept: text/html, application/xhtml+xml, application/xml;q=0.9, */*;q=0.8



  # - HTTP (Request) Verbs -
    # GET:
      #fetch a resource from the server.
      #For a GET request, the URL should carry all the required pieces of information
      #for the server to spot the right resource. It does not have a message body.

    # POST:
      #create a new resource. The request has an optional payload which helps the server
      #create a new resource.

    # PUT:
      #update an existing resource. The request should have an optional payload to help
      #updating.

    # DELETE:
      #delete an existing resource.



  # - HTTP Headers -
    #HTTP headers give the server information about the sender, the way the client
    #wants to interact, and the message. Each header is a name-value pair.
    #The HTTP protocol specifies all the valid HTTP headers the client and server can use.

    # Cache-Control:
      #a directive that controls how caching happens in CDNs, proxies, or browsers.

    # Connection:
      #used to decide if the network connection needs to be clsed or open
      #possible values are keep-alive or closed.

    # Pragma:
      #heavily implemntation-specific header. It is provided only for backwards
      #compatibility with HTTP/1.0

    # Trailer:
      #tells the server it can append metadata to the message body, for example
      #an integrity check or digital signature.

    # Transfer-encoding:
      #defines the encoding of the payload transferred from the server.
      #this is known as the hop-by-hop header because the encoding is applied between nodes

    # Via:
      #is used in the header to track messages & the capabilities of the client or server

    # Upgrade:
      #if the client or server is allowed to shift from one protocol to another, this header
      #has to be set.



  # - HTTP Responses -
    #The response is similar to a request message except for the status line & headers.

    # Status Line:
      #includes a status code that indicates whether the request succeeded (status code 200)
      #or why the request failed. It also includes the HTTP version and a very brief
      #description of the status.

    # Headers:
      #additional information about the response—for example,
      #the content type or information about the server.

    # Body:
      #(optional): the content of the response. For example, this might be the HTML
      #content of a requested web page or the binary data of an image.



  # - Status Codes -
    #Every response from the server will have a status code.
    #the status code is important and tells the client how to interpret the server
    #response






# - REST -
  #Representional State Transfer

    #It basically says that there are really only 7 different types of things
    #that you usually want to do to an individual resource via the web and you can do
    #them by mixing and matching the HTTP verbs we just covered.

    #A “resource” usually means a “thing” in your database or a data model.
    #In this case, we’ll assume that resource is a blog Post model that you’ve set up:

      #GET all the posts (aka “index” the posts)

      #GET just one specific post (aka “show” that post)

      #GET the page that lets you create a new post (aka view the “new” post page)

      #POST the data you just filled out for a new post back to the server so it can
      #create that post (aka “create” the post)

      #GET the page that lets you edit an existing post (aka view the “edit” post page)

      #PUT (or PATCH) the data you just filled out for editing the post back to the
      #server so it can actually perform the update (aka “update” the post)

      #DELETE one specific post by sending a delete request to the server (aka “destroy” the post)



# - MVC -
  # MVC is all about organization and Rails is all about MVC.
  # When you build a new Rails project, you get that giant mass of folders and files
  # created. Though it seems like there is an overwhelming number of files inside your app
  # directory, they are highly organized and specifically meant to separate the
  # Model, View, and Controller.

    # The Path Through MVC -
      #The router figures out which controller to send it to (e.g. for your blog,
      #the Posts controller).

      #That controller asks the model (e.g. Post model) for data and any other tough
      #questions it has.

      #Then that controller passes off whatever data it needs to the views
      #(e.g. index.html.erb), which are basically just HTML templates that are
      #waiting for those variables.

      #Once the proper view has been pumped full of the data it needs
      #(like the current user’s name), it gets sent back to the client
      #that made the original request. Presto!



# - APIs -
  # Application Programming Interface

  # An API is just an interface. Our web browser goes in the front door to
  # display a bunch of info from Facebook, and our web server goes in the side door
  # for the same data (much faster and more direct) via the API.

    #APIs allow us developers to connect to data servers. Such as Amazon or Google Maps


# - Cookies -
  # Cookies are basically a way for websites to remember who you are from one request
  # to another.

  # Cookies are little bits of data that your browser sends to the website
  # every time you make a request to it. From the perspective of the web server,
  # it lets the server identify you as the same person who made any of a series of
  # previous requests. It preserves the state of your session.


# - Authentication -
  # One of the main uses of these is to determine who the user is, or “authentication”.
  # You’ll basically retrieve the cookie that the user sends you, use it to find that
  # user in your database, and (if the user exists) then you can display the customized
  # web page for that user.



# - Authorization -
  #Authentication lets you determine WHO the user is,
  #but the idea behind authorization is that you might limit what the person can see
  #based on their permission level.
