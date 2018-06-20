# Abstract
The ‘JSON Weather’ device is one of two examples on how to fetch json data from the internet, 
parse it through dictionaries and query specific data content from it. It is powered by the [Dark Sky API](https://darksky.net/)

# Prerequisites

* It is advised that you generate your own API key in order to fetch weather data. An API key is a token that grants you access to a service and identifies you as a user of this service; in this case it allows you to make calls to the Forecast API. 

  * You can generate a key by registering [here](https://darksky.net/dev). 

  * Once you have received your key, open the “JSON Weather” device by clicking on the edit (leftmost) button on the top right corner. You should now be able to see the main patch.
  * Double click on the “dict @embed 1” object. In the Dictionary editor that will appear, go to the “url” line. The url has the structure: "https://api.forecast.io/forecast/APIKEY/LATITUDE,LONGITUDE". Replace the current api key in the url with your own. 
    * You can also change the latitude and longitude to request weather data for another place than the default location which is Berlin. More info about the Dark Sky API can be found [here](https://darksky.net/dev/docs).


# Guidelines

* All you need to do is load the device and click on the `Fetch` button.

* On the left side of the device appear pieces of information we have queried for inside the patch (Location, Summary, Temperature and Wind Speed), whilst under the `Details` section there is a long list of all the data we fetched. 

* On the right side there is a basic example sonification of the wind speed, precipitation intensity (rain) and cloud cover (sun).
