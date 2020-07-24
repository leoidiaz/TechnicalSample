# TechnicalSample

[AppStore Link](https://apps.apple.com/us/app/tierra/id1519045472)

## Tierra Home Screen
<p align = "center">
<img src= "home.PNG" width = "300">
</p>

Tierra is an iOS app to remind you water your plants and track watering days.

This code snippet is for the collection view cell of the app's home page.  

When a plant object is set in the collectionview it activates the setupCell() method which configures the cell to have an image and how the cell looks. 

One of the most important aspects of this code is the NSCache. A cache system was not included initially when I released the app and was added after I learned how to use it. Ultimately, the cache fixes a bug where the user would scroll in the colllectionview and the screen would lag and reload the cell's image. By adding a cache, not only is scrolling smooth but there isn't any redundant fetches when dequeuing the cell. 

The full app can be found here: (https://apps.apple.com/us/app/tierra/id1519045472)
