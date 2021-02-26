# HTTP   
 Hypertext Transfer Protocol (HTTP) is an application-layer protocol for transmitting hypermedia documents, such as HTML. It was designed for communication between web browsers and web servers, but it can also be used for other purposes. HTTP follows a classical client-server model, with a client opening a connection to make a request, then waiting until it receives a response. HTTP is a stateless protocol, meaning that the server does not keep any data (state) between two requests. Though often based on a TCP/IP layer, it can be used on any reliable transport layer, that is, a protocol that doesn't lose messages silently like UDP does.           

>we also have the HTTPs. the difference between this and HTTP is the presence of SSL(Secure Socket Layer) or TLS(Transport Layer Security) which provides security to the data being sent between  the two systems(the client and the server).

## COMPONENTS OF AN HTTP BASED SYSTEM:
1. ***Client: the user-agent***
The user-agent is any tool that acts on the behalf of the user. This role is primarily performed by the Web browser; other possibilities are programs used by engineers and Web developers to debug their applications. The browser is always the entity initiating the request.

2. ***The Web server***
On the opposite side of the communication channel, is the server, which serves the document as requested by the client. A server appears as only a single machine virtually: this is because it may actually be a collection of servers, sharing the load (load balancing) or a complex piece of software interrogating other computers (like cache, a DB server, or e-commerce servers), totally or partially generating the document on demand.

 A server is not necessarily a single machine, but several server software instances can be hosted on the same machine. With HTTP/1.1 and the Host header, they may even share the same IP address.

3. ***Proxies***
Between the Web browser and the server, numerous computers and machines relay the HTTP messages. Due to the layered structure of the Web stack, most of these operate at the transport, network or physical levels, becoming transparent at the HTTP layer and potentially making a significant impact on performance. Those operating at the application layers are generally called proxies. These can be transparent, forwarding on the requests they receive without altering them in any way, or non-transparent, in which case they will change the request in some way before passing it along to the server. 

### HTTP requests, and responses, share similar structure and are composed of:

**A Start-Line** describing the requests to be implemented, or its status of whether successful or a failure. This start-line is always a single line.
An optional set of HTTP headers specifying the request, or describing the body included in the message.
A blank line indicating all meta-information for the request has been sent.

**Body** containing data associated with the request (like content of an HTML form), or the document associated with a response. The presence of the **body** and its size is specified by the *start-line* and HTTP *headers*.
The start-line and HTTP headers of the HTTP message are collectively known as the head of the requests, whereas its payload is known as the body.  

## HTTP/2 
    This is an improved version of the HTTP/1.1 which was released in 2015. it has alot of advantages over the HTTP/1.1
 Headers, unlike bodies, are uncompressed. Headers are often very similar from one message to the next one, yet still repeated across connections.
No multiplexing can be done. Several connections need opening on the same server: and warm TCP connections are more efficient than cold ones.
HTTP/2 introduces an extra step: it divides HTTP/1.x messages into frames which are embedded in a stream. Data and header frames are separated, this allows header compression. Several streams can be combined together, a process called multiplexing, allowing more efficient use of underlying TCP connections.
