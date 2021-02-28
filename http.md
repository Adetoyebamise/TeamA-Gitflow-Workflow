# HTTP - HYPERTEXT TRANSFER PROTOCOL

## What is HTTP? 


HTTP is an acronym for Hypertext Transfer Protocol, literally a protocol used to transfer hypertext. What is a protocol and what is hypertext? In this context, a protocol is a system of rules that allow communication of information between different entities, like computers. Hypertext is a somewhat outdated word for text that is displayed on a computer screen that contains hyperlinks to other text. A hypertext transfer protocol is the set of rules, servers and browsers used to transfer web documents back and forth. Which is why every URL you type into a web browser starts with http. Hypertext Transfer Protocol (HTTP) is one of the most utilized protocols on the internet.

## PRINCIPLES OF HTTP

1. It is written in plain language and human readable
A HTTP request, response or message can be read and can easily be understood even if you don't necessarily know how the technology works. All HTTP request methods use simple human language verbs such as Get, post, put, delete etc.

2. HTTP is a stateless protocol
HTTP as a stateless protocol means each individual request sent over the protocol is unique, and no request is connected to another request. HTTP has no memory of previous requests.

3. HTTP works based on request/response pairs. 
Every action performed over HTTP starts with a request using one of the HTTP methods and ends with a response containing an HTTP status code saying what happened to the request along with the data like headers and content.

## VERSIONS OF HYPERTEXT TRANSFER PROTOCOL

The HTTP protocol is constantly evolving and new features are added to make it work better, faster, and with new technologies.

1. HTTP/1.1

2. HTTP/2


**HTTP/1.1** was released in 1997 and its still very much alive, and it's also the fallback protocol anytime HTTP/2 fails. HTTP/1 sends uncompressed headers, transfers only one file at a time over a connection, and has no default encryption.
 
**HTTP/2** is relatively new in web terms, and as of right now, powers between 70 and 80 percent of all transactions over the web. HTTP/2 is faster and more secure. It uses compression algorithms to speed up requests, allows for multi-plexing, meaning multiple files are sent over connection at the same time and requires an encrypted connection between the client and the server through HTTPS.

## HTTP TERMINOLOGIES

- Browser

The browser is an application used to access and navigate between HTML documents. Browsers come in many varieties, the most common being the regular visual browsers seen on smartphones, tablets or computers. Other browsers include text-to-speech audio browsers, text-only browsers, VR, AR, MR, XR browsers, etc.

- Internet Protocol

IP is short for Internet Protocol, the protocol used to actually transfer data between computers over a network. Each computer connected to the internet has a dedicated IP address which is used to connect to it. 

- Universal Resource Locator

URL for short, a universally understood address pointing at a resource somewhere on the web. URLs are human-readable addresses stored in Domain Name Servers and configured to point to the IP addresses of web servers. When you type in a web address in the address bar of your browser, that address is automatically prefixed with either HTTP or HTTPS, telling you you are using the Hypertext Transfer Protocol to access the resource at the other end of that universal locator.

- Server

A server is a computer on the internet running some form of data storage and sharing application, most commonly a web server application, allowing users to access its data through the HTTP protocol. HTTP is a client server protocol, meaning the clients, or user agent, most commonly the browser, sends request to the server and the server serves responses back to the client. 

- Proxy

A proxy is a service, either software or hardware, acting as a middle person between clients and servers. Proxies are often used when the IP address of a server needs to be hidden or when a server or client sits behind some sort of network barrier like a firewall. 


- Request-Response Pairs

Clients and servers communicate over HTTP using request-response pairs. Whenever a client, typically a browser, talks to a server, it does so by sending an HTTP request. That request contains a request method describing what action is requested, an address pointing to a resource, and other information about the client. If the client is trying to send information to the server, that information is also packaged in the request as a payload. The response is the literal response to the request. It contains a status response code explaining what happened, information about how the response was handled, and any data requested if the response was successful. Requests and responses use HTTP headers to identify themselves and explain what they want. Every request and response has a header and some also have payloads, the data that's transferred.

- Header

The header contains metadata about the request facilitating communication between clients and servers. The headers of an HTTP request always contain a request method, or verb. These methods are words like get to get something, put to put something, update to update something, delete to delete something, etc. The header of an HTTP response always contains a status response code. These are numerical codes in the 100 to 500 range describing what type of response the client is receiving, 200 OK, 404 Not Found, 500 Server Error, etc.

- Cache

A cache short-term computer memory where information is stored for easy retrieval. Web servers and clients can cache, so literally store data for a specified length of time to speed up transfers and performance. Websites and web servers can instruct clients to cache files, clear cached files, or update specific cached files.All this is done through instructions passed in a cache header. 

- Cookie

A cookie is a small piece of data stored on the user's computer by the web browser while browsing a website. HTTP is a stateless protocol, meaning there is no link between two requests being sent between the client and the server. When we need to create a stateful session, we can use cookies, small pieces of information passed back and forth between the client and the server in the HTTP header to notify each party of the state the other is in.

## THE HTTP FLOW

In an HTTP Flow, First, the browser opens a TCP connection to the server. This ensures data can be sent back and forth over the network and that the data sent from one end is put together the same way at the other end. If the connection happens over HTTPS, TLS certificates are exchanged to ensure only the computer and the server can encrypt and decrypt the transmitted data. This prevents anyone from being able to eavesdrop on the conversation between the client and the server and steal the data they are transmitting.

Second, the browser sends an HTTP message. This message always contains an HTTP method, like GET, PUT, DELETE or something similar, and a URL pointing at the requested resource. It can also contain headers like cookies or authentication data and data if the browser is submitting data to the server using the post, put, or path methods. Third, the server performs the requested actions and sends a response back to the browser.

This response will contain an HTTP status message indicating what happened, headers with information about the response, and whatever data was requested. This data could be an HTML document or a style sheet or a JavaScript file or image or any other type of content used in a standard website. Finally, once the response is fully received, the TCP connection is closed. Since HTTP is stateless, we are now back to a clean slate. In most scenarios, the first HTTP transaction between a browser and a server is to retrieve a web document for a page or a view. This document typically holds links to CSS and JavaScript files as well as referenced elements like images. Each of these items is fetched from their server and brought into the browser using the same HTTP flow. HTTP/2 allows multiplexing, meaning multiple transactions can take place over the same TCP connection at the the same time. This new protocol also allows the server to push data to the browser. All of this improves performance and reduces the load time for webpages and views significantly. 

## ANATOMY OF A URL

A URL is a human-readable address, describing exactly where on the web and in what location on a server the information you are requesting is located. Below is an example of a URL 

**https://facebook.com/sakarious/profile?u1232**

The URL has two main pieces, a protocol declaration, and a Universal Resource Name, or URN. This URN provides the location of the resource. The protocol declaration states how we are accessing that resource using the http methods and transport layer. The URN itself is made up of several pieces. First, we have the host. This is the domain which is registered at a domain name service, or DNS and this domain points to a dedicated server IP address, somewhere on the web. Next, we have the implied, and usually invisible, connection port, stating which port we want to access on the server. For http connections, the default port is 80. For https connections, the default port is 443. As long as the server uses either of these ports, we don't see the port declared. If the server uses another port or we want to access another port, say 8080, that port can be declared using a colon, localhost:8080. After the host and port comes the resource path. This is the file location within the server. The default names for web documents are index.html and default.html. If we request a folder without a file specification, the server and browser automatically look for files named either index.html or default.html or index.php or similar and returns that file to us. If the file is called anything else, like about.html or contact.php, etc., the resource path needs to list the filename specifically.\s\s

Finally, we have the optional URL query. This is one or more queries added to the end of the resource path that can perform further actions on the server. In some cases, such queries are used to track a user's ID, in others they're used to filter content or perform other actions. URL queries start with a question mark and then each query comprises an argument and a value like u=1232.

## HTTP METHODS

Every request sent over the HTTP protocol includes a method,(or a verb). This method tells the server what type of action we want to perform with the request. There are a limited set of these methods available and some are more used than others. For standard web transactions, we use GET, POST, DELETE etc. Each of the HTTP methods has it's own request response pair and some require more information than others to work.

The most frequently used **HTTP** method is **GET**. It is also the simplest one. A GET request for a public resource only needs the method and the URL to work. If this resource sits behind a security layer, the request typically also needs an authorization header containing an encrypted username and password pair and may require a cookie containing an authentication token. If a GET request is successful, a 200 OK HTTP status is returned along with the requested data. If it fails, meaning the requested resource does not work, the familiar 404 Not Found status is returned telling you the resource quite literally cannot be found at this address. If the user does not have the correct access authorization, a 405 Not Allowed status is returned and if the resource is blocked by the server, a 403 Forbidden status is returned. To send data from the client to the server. 

We have three different methods to perform different types of actions.**POST**, **PUT**, and **PATCH**. POST is the most common of these methods, as it is the one used when a form is submitted on a webpage. A POST request asks the server to create a new resource and give it an ID for future retrieval. Because POST requests make changes to the server, they typically need an authorization header. A successful POST request returns a 201 Created HTTP status along with a link to the new resource ID and the response header. If the resource already exists, the server returns a 409 Conflict status and if the resource is sent to a resource that can't create new resources then you get a 404 Not Found HTTP status in return. 

PUT is used to update an existing resource by replacing some or all of its contents with the contents of the request. Like POST, PUT typically requires an authorization header. Unlike POST, which just contains the contents, a PUT request contains the ID of a resource and the new content to be added to that resource. If the resource already exists, the existing content is replaced with the contents in the PUT request. If no resource with this ID exists, the server will in some cases allow the new resource to be created with the user defined ID or you'll get an error message. A successful PUT request returns a 200 OK status. If there is no content on the server, a 204 No Content status is returned. If the ID doesn't match an existing resource, a 404 Not Found status is returned. If a PUT request is sent to a resource that can't be updated, a 405 Method Not Allowed status is returned. 

PATCH is used to modify an existing resource. Where PUT updates the resource by replacing content, Patch can carry along instructions on how to modify the existing resource without necessarily replacing data. PATCH also typically requires an authorization header and returns the same status as PUT. DELETE does exactly what it sounds like. It deletes a specified resource.

A DELETE request must contain the ID for the resource and an authorization header. If you try to delete a resource you are not allowed to delete, you'll get a 405 Method Not Allowed status. What actually happens on the server when you send a DELETE request varies from server to server. In some cases you delete a database entry. In other cases, you change the status of a database entry without actually removing content. It all depends on the design of the system you're interacting with. In addition to these content methods.

HTTP also has three methods to get information from the server without really touching the content.They are HEAD, which returns just the HEAD section of the response, OPTIONS which returns a description of the communication options for the target resource, and TRACE, which creates a loop back of the request message effectively telling the client where the request ended up.

## HTTP STATUS MESSAGE

Anytime an HTTP request is sent to a server, A response is received, even if the response is that something went wrong. This response starts with an HTTP status code, explaining what happened on the server and how your request was handled. The client can use these status codes to identify successes and failures and automatically respond with next steps. The HTTP response status codes are split into five main groupings. 1XX, 2XX, 3XX, 4XX, and 5XX codes.

### 1XX STATUS CODE

Status codes of the 1XX format are informational and rarely encountered. They're used to inform the client of the status of the server. 


Status code 100 means Continue; This simply tells the client the server has received the request headers, and is ready for the rest of the request body. 

Status code 102 means Processing; This tells the client to wait for the server to finish.  

### 2XX STATUS CODE

Status codes of the 2XX format are success messages.

Status code 200 means OK; This means the request was successful. 

Status code 201 means Created; This means the request was successful and a new resource was created. 

Status code 204 means No Content; This means the server processed the request, but returned no content. 


### 3XX STATUS CODE

Status codes of the 3XX format indicate redirection. The client is provided with a new URL to follow to get to the requested resource. 

Status code 301 means Moved Permanently; This tells the client, "Use this new URI for all future requests." 

Status code 302 means Found; which technically means "resource temporarily redirected to this other URI" 

Status code 303 means Found (Related to 302); which means "the response to this resource is actually found at this other URI".

Status code 307 means Temporary Redirects. 

Status code 308 means Permanent Redirects. 

### 4XX STATUS CODE

Status codes for the 4XX format signal client errors. 

Status code 400 means Bad Request; which implies the request is mal-formed or too large. 

Status code 401 means Unauthorized; which implies the client lacks proper authentication to access the resource. 

Status code 403 means Forbidden; which implies the request is refused by the server, typically because the client is not logged in, or does not have the correct permissions.

Status code 404 means Not Found; which implies the resource doesn't exist. 

Status code 405 means Method Not Allowed; which kicks in if you try to use an HTTP verb like "POST" on a resource that can only receive "GET" requests. 


### 5XX STATUS CODE

Status codes of the 5XX format, signal server errors. 

Status code 500 means Internal Error; meaning something went wrong on the server.

Status code 502 means Bad Gateway; meaning the server acts as a literal gateway or proxy and received an invalid response from wherever it was trying to connect to. 

Status code 503 Service Unavailable; which is encountered when a server is overloaded or temporarily unavailable, or something else goes wrong.

There are more HTTP status messages, but these are most likely to be encountered when working with regular websites.

## HTTP/1.1
 The Hypertext Transfer Protocol, or **HTTP**, is an application protocol that has been the de facto standard for communication on the World Wide Web since its invention in 1989. From the release of HTTP/1.1 in 1997 until recently, there have been few revisions to the protocol.  
 > HTTP is a system of rules that allows commication of information between different entities. it was developed by ***Timothy Berners-Lee*** in 1989 as a communication standard for the World Wide Web, HTTP is a top-level application protocol that exchanges information between a client computer and a local or remote web server. In this process, a client sends a text-based request to a server by calling a method like **GET** *or* **POST**. In response, the server sends a resource like an HTML page back to the client.

>For example, let’s say you are visiting a website at the domain www.example.com. When you navigate to this URL, the web browser on your computer sends an HTTP request in the form of a text-based message, similar to the one shown here:  
>
> GET /index.html HTTP/1.1  Host: www.example.com

This request uses the **GET** method, which asks for data from the host server listed after Host:. In response to this request, the *example.com* web server returns an HTML page to the requesting client, in addition to any images, stylesheets, or other resources called for in the HTML. Note that not all of the resources are returned to the client in the first call for data. The requests and responses will go back and forth between the server and client until the web browser has received all the resources necessary to render the contents of the HTML page on your screen.

### TERMINOLOGIES USED:
1. TCP (Transmission Control Protocol)
2. IP (Internet Protocol)
3. DNS (Domain Name server)
4. Resource: this is the name of a file/files available on a server following a URL
5. Server: it is a computer on the internet running some form of data storage and sharing application, most commonly a web server application.
6. Proxy: it is a software\hardware acting as a middle person between clients and servers.
7. Cache: method for storing data on the client or the serber to speed up performance.
8. Cookie: this is a string of data passed back and forth between the client and server to create a stateful session. 



## HTTP/2

The primary goals for HTTP/2 are to reduce latency by enabling full request and response multiplexing, uses efficient compression of HTTP header fields, and add support for request prioritization and server push. To implement these requirements, there is a large supporting cast of other protocol enhancements, such as new flow control, error handling, 
Request and Response Multiplexing

**With HTTP/1**, if the client wants to make multiple parallel requests to improve performance, then multiple TCP connections must be used; see Using Multiple TCP Connections. This behavior is a direct consequence of the HTTP/1.x delivery model, which ensures that only one response can be delivered at a time (response queuing) per connection. Worse, this also results in head-of-line blocking and inefficient use of the underlying TCP connection.

The new binary framing layer in **HTTP/2** removes these limitations, and enables full request and response multiplexing, by allowing the client and server to break down an HTTP message into independent frames then reassemble them on the other end.
                                            ##FEATURES OF HTTP/2
**Server Push**
Another powerful new feature of HTTP/2 is the ability of the server to send multiple responses for a single client request. That is, in addition to the response to the original request, the server can push additional resources to the client  without the client having to request each one.

**Header Compression**
Each HTTP transfer carries a set of headers that describe the transferred resource and its properties. In HTTP/1.x, this metadata is always sent as plain text 
 **HTTP secure** 
http/2 provides secure http to ensure end to end encryption using ssl certificate and it is useful for businesses and sites with sensitive information like credit card details and ecommerce platforms.
 **HTTP optimisation**
http/2 provides more means of optimization of websites so they can run efficiently and for function optimal both in technical performance and percieve,browser performance. images,codes,server delivery,browser handling, caching.
