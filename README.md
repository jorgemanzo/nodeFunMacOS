# nodeFunMacOS
hopefully I can get this to talk to a nodeJS server

And I did! So this app expects that you have something like
this form to database app [(check it out here)](https://github.com/jorgemanzo/nodeFun) running on something like a Digital Ocean droplet.
Once thats done, and you provide the droplet's IP address in the
`viewController.swift`, the app should communicate with your dropplet just fine.

The two apps go hand in hand, and it was my way of learning how something like a MacOS app can communicate with NodeJS express server and return JSON data from a mySQL DB that was populated with data from a web form, using handlebars for fun x3.

Thanks to [@maccelerated](https://github.com/maccelerated) for teaching me Digital Ocean <3

Uses AlamoFire and Alamofire-Object-Mapper to take the JSON your droplet
will send back.
