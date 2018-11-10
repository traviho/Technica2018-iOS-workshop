# Technica2018-iOS-workshop

Table of Contents
Basics
Creating Layouts in Storyboard
IBOutlets & IBActions
Lists
Grids
CocoaPods
Network Requests

Basics
Download Xcode from the app store. Create a new project->Single View Application. There will be a play button at the top of the editor where you can choose a simulator, i.e. iphone 8, and then run your application on the simulator.

Creating Layouts in Storyboard
In Main.Storyboard, we can drag and drop new UI components onto our screen. We can set constraints to position and size our elements correctly, and make them scalable on any device.
Tutorial on constraints:

IBOutlets & IBActions
Use IBOutlets to reference UI elements in your code. Use IBActions to write functionality for events, for example run a function when a button is clicked.
Tutorial on Outlets & Actions:

Lists
To create lists, use a TableView. We have example code in our Table View Demo app, which is a To Do list.
[]()
Tutorial on TableView:

Grids
To create grids of items, use a CollectionView. We have example code in our Collection View Demo app, which has a grid of photos.
Tutorial on CollectionView: 

Cocoapods
Use Cocoapods to use parts of other people's code to use in your project. Learn more []()

Network Requests
Networking will be useful if your app needs to access the web, communicate to a server, or with an online database.
Look at our sample Weather app in Networking Demo.
Since this uses Cocoapods, you will need to run pod install before being able to run the app.
Tutorial on Networking with Alamofire:
