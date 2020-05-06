## SwiftGETPOST
 GET and POST request in Swift 4+



## Code style
If you're using any code style like xo, standard etc. That will help others while contributing to your project. Ex. -

[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
 

## Tech/framework used
Ex. -

<b>Built with</b>
- [Electron](https://electron.atom.io)
- Swift 4+ compatible
- [JSON Placeholder](https://jsonplaceholder.typicode.com/) 

## Code Example
Look at Contents.swift. It is a Swift playgrounds file. Run the GET function by adding the following to line 67
```
getRequest()
postRequest()
```
The example uses JSONPlaceholder to supply the example with fake json. The GET request function will return json from JSON Placeholder inside the console. The POST request will return a HTTP Status code of 201 "OK" inside the console.

## How to use?
You can use this in your iOS projects by changing the url in each function. An example for supplying the function with a url (replace "YOUR-OWN-URL" with an actual url that serves some json):
```
let url = URL(string: "https://YOUR-OWN-URL")!
```

## License

MIT © [heyylateef]()
