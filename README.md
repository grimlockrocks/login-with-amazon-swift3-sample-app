# login-with-amazon-swift3-sample-app
A sample iOS/Swift3 app that demonstrates Login with Amazon

Instructions:
* Check-out the code, modify Bundle Identifier to something you like.
* Modify the entries under "info.plist" -> URL types, replace URL Schemes -> Item 0 and URL identifier with your Bundle Identifier.
Be sure that amzn- appears before your bundle id for url scheme.
eg. bisheng.LWA-Sample-App -> amzn-bisheng.LWA-Sample-App


* Set up a new security profile: https://developer.amazon.com/lwa/sp/overview.html, generate a new iOS API. 
* Modify the value of APIKey under "info.plist" to use your API key. 
