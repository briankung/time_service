# Time Service

Time Service is a rails application that queries a time service for the current time, and stores each query result in a sqlite database.

The application has two text boxes for latitude and longitude, and a single button that, when clicked, queries the earthtools (http://www.earthtools.org/webservices.htm#timezone) web service for the current time. Each time this happens, the session id, lat/long and response should be recorded through a model object to the database.

The returned time should be displayed on the page as well.