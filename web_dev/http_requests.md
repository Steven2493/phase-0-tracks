#What are some common HTTP status codes?
##404 Not Found - means the requested resource is no longer available
##403 Forbidden - means access to the resource is forbidden. 
##500 Internal Server Error - server-side error codes,
##503 Service Unavailable -  the web server isn’t available. 
##504 Gateway Timeout - indicating a gateway timeout
###Source - https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/

#What is the difference between a GET request and a POST request? When might each be used?
##-GET is for retrieving data.  It should have no side effects, you should be able to request the same URL over and over harmlessly.  

##-POST is for writing data.  It may have side effects.  Making multiple identical write requests will likely result in multiple writes.  Browsers typically give you warnings about this.  POST is *not* secure.  The data is in the body of the request instead of the URL but it is trivially simple to view/edit.
###Source - https://www.quora.com/HTTP-What-is-the-difference-between-GET-and-POST

#Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
##An HTTP cookie (also called web cookie, Internet cookie, browser cookie, or simply cookie) is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers..

##Cookie are best used to help to store user data to help either remember what they were doing on the site or to load a site quicker by accessing their store information.