# RepliFlix App
My Replica of Netflix iOS App using Swift 5, UIKit, and Xcode. <br/>
Jump to:<br/>
[`RepliFlix Overview on iOS 15.5 iPhone Pro Max 13 Simulator`](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20Overview%20on%20iOS%2015.5%20iPhone%20Pro%20Max%2013%20Simulator.png) <br/>
# Build
[Prerequisites & Setups](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#prerequisites--setups)<br/>
[Debugging&Troubleshooting](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#debuggingtroubleshooting)<br/>
[Synchronous Developing Notes](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#synchronous-developing-notes)<br/>
[Method Running The Project(Locally)](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#method-running-the-projectlocally)<br/>
[Testing Result](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#testing-result)
# Contribution
Author 
# Functionalities/Demo
- Having navigation bar scrolls with general table views. <br/>
- Generating lists of trending and upcoming movies and tv shows. <br/> 
- Enabling to either play or download when the user clicks on certain movies or shows Navigating through different tabs. <br/>
- Searching certain movies or shows when the user inputs certain keywords Redirecting the user directly to the official trailers by clicking on the animated titles.<br/>
# Compatibility
iPhone 13+, iPad 10.2+ 
# Developing Tools and Techniques Needed
[`Xcode 13.4.1 iOS 15.5+`](https://developer.apple.com/documentation/xcode-release-notes/xcode-13_4_1-release-notes) <br/>
[`SF Symbols Explorer App`](https://apps.apple.com/us/app/sf-symbols-explorer/id1612933742) <br/>
[`Swift 5`](https://www.swift.org/blog/swift-5-released/)<br/>
[`MVVM(Model-View-Viewmodel)`](https://en.wikipedia.org/wiki/Model–view–viewmodel)<br/>
# Prerequisites & Setups
Set Xcode simulator to Dark Theme by `Developer`-> `Dark Appearance`. <br/>
Delete `Main` and `Storyboard Key` in `Info Configuration`. <br/>
Search `main` in `Find` > `Text` > `Containing`. <br/>
Delete **`UIKit Main Storyboard File Base Name`** to get rid of `Storyboard`. <br/>
# Synchronous Developing Notes
In [SceneDelegate](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/SceneDelegate.swift):<br/>
We are going to be assigning the view controller to be the root view controller of our application.<br/>
Change ViewController into [MainTabBarViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/MainTabBarViewController.swift). <br/>
Change system background color to yellow: 
```swift
view.backgroundColor = .systemYellow
```
to test if everything works okay so far. <br/>
## ***4 main navigation bars in UI in Cocoa Touch Class Creation:***
Create a new group for all controllers, name the folder of new group as [Controllers](https://github.com/KrystalZhang612/RepliFlix/tree/main/RepliFlix/Controllers). <br/>
In [Controllers](https://github.com/KrystalZhang612/RepliFlix/tree/main/RepliFlix/Controllers), create a new file in Cocoa Touch Class, and name it [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift) as Home navigation bar, set the background color into red. <br/>
Create another file in Cocoa Touch Class, name it [UpcomingViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/UpcomingViewController.swift), as Upcoming navigation bar, set the background color into green.<br/>
Create another file in Cocoa Touch Class, name it [SearchViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/SearchViewController.swift), as Search navigation bar, set the background color into systemPink. <br/>
Create another file in Cocoa Touch Class, name it [DownloadsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/DownloadsViewController.swift), as Downloads of movies and TV shows, set the background color into blue. <br/>
## ***4 main navigation bars initialization:***
In [MainTabBarViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/MainTabBarViewController.swift):<br/>
Use vectors to initialize the 4 navigation bars:
```swift
let vc1/2/3/4 = UINavigationController(rootViewController: HomeViewController/UpcomingController/SearchController/DownloadsViewCo ntroller())
```
## ***Animation creation:***
In [MainTabBarViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/MainTabBarViewController.swift):<br/>
```swift
setViewControllers([vc1,vc2,vc3,vc4],animated: true)
```
## ***Build RepliFlix in Simulator to test if color backgrounds switch through tabs bars correctly. Selecting icon images:***
Search “house” in SF Symbols Explorer, then in [MainTabBarViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/MainTabBarViewController.swift), set “house”
symbol as our [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift) tab bar:
```swift 
vc1.tabBarItem.image = UIImage(systemName: “house”)
```
Set “play.circle” symbol as our [UpcomingViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/UpcomingViewController.swift) tab bar:
```swift 
vc2.tabBarItem.image = UIImage(systemName: “play.circle”)
```
Set “magnifyingglass” symbol as our [SearchViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/SearchViewController.swift) tab bar:
```swift 
vc3.tabBarItem.image = UIImage(systemName: “magnifyingglass”)
```
Set “arrow.down.to.line” symbol as our [DownloadsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/DownloadsViewController.swift) tab bar:
```swift 
vc4.tabBarItem.image = UIImage(systemName: “arrow.down.to.line”).
```




















# Debugging&Troubleshooting
# Method Running The Project(Locally)
# Testing Result
