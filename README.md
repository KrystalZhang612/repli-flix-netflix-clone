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
vc4.tabBarItem.image = UIImage(systemName: “arrow.down.to.line”)
```
## ***Build RepliFlix in Simulator to test if the tab bars images appear correctly. Setting up the titles for 4 navigation bars:***
```swift 
vc1/2/3/4.title = “Home/Coming Soon/Top Search/Downloads”
```
Change all ViewControllers’ backgrounds into defaulted system themed color:
```swift
view.backgroundColor = .systemBackground
```
In [MainTabBarViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/MainTabBarViewController.swift), add 
```swift 
tabBar.tintColor = .label
```
to add tint on bars. <br/>
## ***HomeFeedTable prototype setup:***
In [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), use the anonymous closure pattern to initialize our table to be a UI. <br/>
## ***tableView setup:***
```swift
let table = UITableView()...
```
Set up our register to be a reusable identifier for further cell customization:
```swift
table.register(UITableViewCell.self, forCellResuseIdentifier: “cell”)
```
To add data, create `tableView` function, dequeue the cell with text content “Hello World”:
```swift 
...tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)...cell.textLabel?.text = "Hello world"
```
A vertical list of “Hello World” should be outputting. Done setting up tableView.<br/>
## ***Heights setup(Headers & Cells):***
Leverage the delete methods to assign height as 200px to the header and between adjacent cells:
```swift
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { return 200}
```
Add 4 new groups named `Managers`, `Resources`, `Models` and `Views`.<br/>
Add [CollectionViewTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift) in the Cocoa class in the Views group.<br/>
## ***Collection View Table Views Cells Management:***
In [CollectionViewTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift), add the identifier, which is the same one as we used previously for registering the normal set:
```swift 
static let identifier = "CollectionViewTableViewCell"
```
Then initialize the cell style and reusable identifier:
```swift 
override init...
super.init(style: style, reuseIdentifier: reuseIdentifier)
```
And implement the NSCoder as well.<br/>
Also, we need to specify the header to appear separately from cell blocks with 40 px height:
```swift 
let table =
UITableView(frame: .zero, style: .grouped)
```
In [CollectionViewTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift), we need to define a new connection view cell using the same anonymous closure pattern:
```swift 
private let collectionView: UICollectionView = {... }
```
## ***Cells Layouts arrangement:***
Set scroll directions are horizontal to navigate through categories:
```swift 
layout.scrollDirection = .horizontal
```
Add an arbitrary cell name in the content view collection, and conform to those two protocols that allows us to display pictures and data inside the collection view.<br/>
We want our collection view to be the entire body of the cell, so we need to do:
```swift 
override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds }
```
Customize the size of each cell to get them independently aligned and horizontally scrollable:
```swift 
layout.itemSize =  CGSize(width: 140, height: 200)
```
## ***Adding & Modifying Headers to our TableView:***
In [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift):
```swift 
homeFeedTable.tableHeaderView = UIView(frame: CGRect(x: 0, y:0, width: view.bounds.width, height: 450))
```
Then we can modify the header for each section by first creating a new file under the View folder in Cocoa class and name it as [HeroHeaderUIView](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/HeroHeaderUIView.swift), which is in UIView.<br/>
Starting off by initializing frame and required initializer:
```swift 
 override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder: NSCoder){
        fatalError()
    }
```
Then we need a image that contains the header:
```swift 
private let heroImageView: UIImageView = {...}
```
Enable ImageView functionality:
```swift 
let imageView = UIImageView()
```
We also want to avoid overflow:
```swift
imageView.clipsToBounds = true
```
## ***Adding Poster Images with effects with GCColor:***
Add a new image set and name the image in Assets, and in [HeroHeaderUIView](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/HeroHeaderUIView.swift), add the image with its name: 
```swift 
imageView.image = UIImage(named: "image-name")
```
Also in [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), we need to remove the arbitrary UIImageView setup and replace it with our hero image:
```swift 
let headerView = HeroHeaderUIView(frame: CGRect(x:0, y:0, width: view.bounds.width, height: 450))
```
To add fading-out effect to the header poster image, we need to utilize the gradient, we want to set the color to be clear by CGColor:
```swift 
gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor]
```
Then we need to add this sub layer to our UIView and give the gradient a frame:
```swift 
 gradientLayer.frame = bounds
 layer.addSublayer(gradientLayer)
 ```
 Now we have the transparent-fading-out header poster.<br/>
 ## ***Add two buttons for Play & Download:***
 Play button: set title, set color, set width, return:
 ```swift 
  private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        return button
}()
```
Also we need to set some constraints to align button perfectly:
```swift
button.translatesAutoresizingMaskIntoConstraints = false
```
Initialize the constraints as false so we can use it elsewhere further, so we need a function `applyConstraints` to setup playButton constraints:<br/>
Leading anchor left-right:
```swift 
let playButtonConstraints = playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90)
```
to move the Play button upward, set the bottom anchor to negative value:
```swift 
playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50)
```
To modify width:
```swift 
playButton.widthAnchor.constraint(equalToConstant: 100)
```
Activate the playButton constraints:
```swift 
NSLayoutConstraint.activate(playButtonConstraints
```
Similarly layer setup for Download button. Besides, for aesthetic purposes, let’s give the two buttons rounded corners with radius of 5:
```swift 
button.layer.cornerRadius = 5
```
## ***Adding Netflix Logo:***
Start off by defining a new configuration function:
```swift 
private func configureNavbar(){...}
```
Add Netflix logo PNG transparent image into Assets, to keep the image color original, we need:
```swift 
image = image?.withRenderingMode(.alwaysOriginal)
```
So the logo retains its red original color and dims when clicked.<br/>
## ***Adding Right Bar Play Button and User Profile Button:***
We need an array:
```swift 
navigationItem.rightBarButtonItems = [...]
```
RightBar play button:
```swift
UIBarButtonItem(image: UIImage(systemName: "person"),style: .done, target: self, action: nil),
```
User Profile button:
```swift
UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
```
We want the navigation bar to be pushed upwards and disappear as the user scrolls up to prevent it from hiding the contents down below. To make the navigation bar stick on the top, we need to implement such an algorithm: in the given template:
```swift 
func scrollViewDidScroll(_ scrollView: UIScrollView)
```
```swift 
navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset)), -offset
```
indicates we are pushing the navigation bar upward.<br/>
## ***Align Header Sections Titles:***
Starting off by creating a array of strings: 
```swift 
let sectionTitles: [String] = ["Trending
Movies", "Popular", "Trending Tv", "Upcoming Movies", "Top rated"]
```
Also, we want these section titles to have proper fonts, frames and bounds, so we need to add a new method:
```swift 
 func tableView(_ tableView: UITableView,
willDisplayHeaderView view: UIView , forSection section: Int ){...}
header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y:
header.bounds.origin.y, width: 100, height: header.bounds.height)
```
We need to change the section title color as well:
```swift 
header.textLabel?.textColor = .white
```
## ***Sending URL Requests and Parsing JSON response:***
Open the [TMDB website](https://www.themoviedb.org/?language=en-US).<br/>
We need to request an API v3 auth Key from the website to identify and authenticate our application. Then create a new Swift file in Manager named APICaller.<br/>
For simplicity, create a structure to copy and paste the API Key we just requested:
```swift 
struct Constants {
static let API_KEY = "API_KEY"}
```
Create shared API instance: 
```swift 
class APICaller{
    static let shared = APICaller()
```
Now we have our data, we need to convert our data into JSON objects to serialize it, without using any 3rd party network layering: 
```swift 
let results = JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
```
Here, we passed the API Documentations data above and allowed fragments.<br/>
Then we need to add getTrendingMovies function to test if our API works well:
```swift
private func getTrendingMovies(){
        APICaller.shared.getTrendingMovies {_ in }}}
```
Built from the console, then we have App connection to the database established successfully. Now copy the movie JSON objects attributes into a structure named Movie:
```swift 
struct Movie {id: Int media_type: String? original_name: String? original_title: String? poster_path: String? overview: String? vote_count: Int. release_date: String? vote_average: Double
```
Also conform the protocols with `Codable` to get the arrays of objects set up.<br/>
## ***Using Extensions and Fetch and Retrieve API Datas from Database:***
Here we need to use Xcode extensions to capitalize only the first letter for the section titles: <br/>
So in [Resources](https://github.com/KrystalZhang612/RepliFlix/tree/main/RepliFlix/Resources), create a new file named [Extensions](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Resources/Extensions.swift),then create an function:
```swift 
func capitalizeFirstLetter() -> String {return self.prefix(1).uppercased()+ self.lowercased().dropFirst()
```
to capitalize the first letter, drop off the capitalized first letter while lowering case the rest letters fo avoid duplicate by `dropFirst()`.<br/>
Similarly as above, we need to get trending TVs by creating function:
```swift 
func getTrendingTvs(completion: @escaping (Result<[Tv], Error>)-> Void)
```
with a completion callback handler, we use `JSONSerialization` here instead to fetch data.<br/>
<mark>NOTE: To fetch data successfully, we must ensure to resume the task at the end of every API. Thus, we retrieved all upcoming movies and trending movies from the database<mark/>





 















# Debugging&Troubleshooting
# Method Running The Project(Locally)
# Testing Result
