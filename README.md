# KrystalZhang-RepliFlix App
My Replica of Netflix iOS App using Swift 5, UIKit, and Xcode. <br/>
### ***Please read [LICENSE.md](https://github.com/KrystalZhang612/KrystalZhang-RepliFlix/blob/main/LICENSE) about the open source restrictions and personal use policy of this project under GPL-3.0 license, any commericial uses on this project, including unauthorized modifications, forks, and other commercial-related uses will be subjected to copyright violation with severe concerns.***
## RepliFlix App Overview: <br/> 
<p align = "center">
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20Overview%20on%20iOS%2015.5%20iPhone%20Pro%20Max%2013%20Simulator.png" width = "401.8181" height ="839.090"/>&nbsp; 
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20overview-1.png" width = "380" height ="841.8181"/> 
        <img src ="https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20overview2.png"  width = "380" height ="841.8181"/>&nbsp; 
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20overview-3.png"  width = "380" height ="841.8181"/>
        <img src ="https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20overview-4.png"  width = "380" height ="841.8181"/>&nbsp; 
        <img src ="https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix%20overview%20-5.png"   width = "380" height ="841.8181"/>
</p> 


# Build
[Method to Run & Test the Project Locally](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#method-to-run--test-the-project-locally)<br/>
[Prerequisites & Setups](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#prerequisites--setups)<br/>
[Debugging&Troubleshooting](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#debuggingtroubleshooting)<br/>
[Synchronous Developing Notes](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#synchronous-developing-notes)<br/>
[Testing Result](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#testing-result)
# Contribution
[Author](https://github.com/KrystalZhang612/RepliFlix#author)
# Functionalities/Demo
- Having navigation bar scrolls with general table views. <br/>
- Generating lists of trending and upcoming movies and tv shows. <br/> 
- Enabling to either play or download when the user clicks on certain movies or shows Navigating through different tabs. <br/>
- Searching certain movies or shows when the user inputs certain keywords Redirecting the user directly to the official trailers by clicking on the animated titles.<br/>
# Compatibility
|   OS             | Supported          |
| -------          | ------------------ |
| iOS 10+          | :white_check_mark: |
| < iOS 10         | :x:                |
| macOS Mojave     | ✅                 |
| macOS Monterey   | ✅                 |


# Method to Run & Test the Project Locally
### Download the entire project to local directory
### Xcode must be `13.4` and higher versions with all Xcode dependencies updated. 
### Compatible with `MacOS Monterey 12.0` or higher versions 
### Run the project, choose Simulator `iPhone 13` or `iPhone 13 Pro Max` for best compatiability. 

# :hammer_and_wrench: Developing Languages, Tools, and Techniques Needed
[Xcode 13.4.1 iOS 15.5+](https://developer.apple.com/documentation/xcode-release-notes/xcode-13_4_1-release-notes) <br/>
[SF Symbols Explorer App](https://apps.apple.com/us/app/sf-symbols-explorer/id1612933742) <br/>
[Swift 5](https://www.swift.org/blog/swift-5-released/)<br/>
[MVVM(Model-View-Viewmodel)](https://en.wikipedia.org/wiki/Model–view–viewmodel)<br/>
<div>
        <img src = "https://github.com/devicons/devicon/blob/master/icons/xcode/xcode-plain.svg" title="Xcode" alt="Xcode" width="60" height="60"/>&nbsp;
        <img src = "https://github.com/devicons/devicon/blob/master/icons/swift/swift-original.svg" title="Swift 5" alt="Swift 5" width="60" height="60"/>&nbsp;
        <img src = "https://github.com/devicons/devicon/blob/master/icons/googlecloud/googlecloud-original.svg" title = "Google Cloud" alt = "Google Cloud" width="60" height = "60"/>&nbsp;
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/sf%20symbol%20logo.png" title = "SF Symbol" alt = "SF Symbol" width = "60" height = "60"/>&nbsp; 
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/swift%20ui%20symbol%20logo.png" title = "swiftUI" alt = "swiftUI" width = "60" height = "60"/>&nbsp; 
        <img src = "https://github.com/KrystalZhang612/RepliFlix/blob/main/uikit%20symbol%20logo.png" title="UIKit" alt = "UIKit" width = "60" height="60" />&nbsp;       
</div>

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
`NOTE: To fetch data successfully, we must ensure to resume the task at the end of every API. Thus, we retrieved all upcoming movies and trending movies from the database`.<br/>
Repeating the same processes above, we thereby also fetched and retrieved data of Popular Movies and Top Rated Movies as `getPopular()` and `getTopRated()`.<br/>
## ***Refactoring Models:***
To avoid duplicates, in Models group, merge `Movies` and `Tv` into `Title`, and also merge methods `TrendingMovieResponse()` and `TrendingTvResponse()`  into `TrendingTitleResponse()`.<br/>
## ***Creating Custom CollectionViewCell:***
In Views group, create a new file under Cocoa Touch Class and name it as [TitleCollectionViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/TitleCollectionViewCell.swift) to handle everything inside the [CollectionViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift).<br/>
Start a frame initizalier:
```swift
override init(frame: CGRect) {super.init(frame: frame) and required init?(coder: NSCoder){fatalError()
```
to avoid fatal error. <br/>
Then use anonymous closure pattern to create UIImageView method for poster image:<br/>
```swift 
private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
```
We need an asynchronous image downloader with cache support as a UIImageView category, so from [SDWebImage Dependencies]( https://github.com/SDWebImage/SDWebImage.git), we add the SDWebImage package in GitHub target to our UIImage objects directly. Then in [TitleCollectionViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/TitleCollectionViewCell.swift) add configuration as: 
```swift 
 public func configure(with model: String)
 { guard let url = URL(string: model)
 else {return} posterImageView.sd_setImage(with: url, completed: nil)
```
## ***Passing Data to the CollectionView:***
We want every single section to handle its own cells, so to fetch API datas properly, we need a enumeration with all sections as distinct cases:
```swift 
enum Sections: Int {
    case TrendingMovies = 0
    case TrendingTv = 1
    case Popular = 2
    case Upcoming = 3
case TopRated = 4
```
To initialize our enumerators as raw values, in [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), we need a switch method to handle each title case:
```swift
switch indexPath.section{
        case Sections.TrendingMovies.rawValue:  
        case Sections.TrendingTv.rawValue:
        case Sections.Popular.rawValue:
        case Sections.Upcoming.rawValue:
        case Sections.TopRated.rawValue:
```
Configure API Caller for each section title with providing them cases of success and errors:
```swift 
 APICaller.shared.getTrendingMovies { result in
                switch result {
                case .success(let titles):
                    cell.configure(with: titles)
                case .failure(let error):
print(error.localizedDescription)
```
Then in our configuration function, we need to use:
```swift 
self.titles = titles
DispatchQueue.main.async { [weak self] in self?.collectionView.reloadData()
```
since we have retrieved the section titles from the [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), so update and reload the titles array. So now we passed data into CollectionView and got images for each section.<br/>
## ***Viewing poster images inside CollectionViewCell:***
Search [TMDB API](https://developers.themoviedb.org/3/getting-started/introduction)<br/>
Then in our configuration function, pass API images model:
```swift 
 guard let url = URL(string:
"https://image.tmdb.org/t/p/w500/\(model)") else {
            return
        posterImageView.sd_setImage(with: url, completed: nil)
```
Where `image.tmdb.org/t/p/w500` is the API posters images model to pass.<br/>
## ***Creating Upcoming TableView inside Upcoming Tab:***
In UpcomingViewController, create a anonymous closure pattern function as Upcoming Table:
```swift
 private let upcomingTable: UITableView = {} ()
```
Set a normal register to itself:
```swift 
table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
```
We need to make sure the data reloaded into upcoming table inside async function and be executed in main thread by adding:
```swift 
DispatchQueue.main.async {
      self?.upcomingTable.reloadData()}
```
And to avoid the frequently occurred “switch must be exhaustive” error, we must append a failure case after every success to localized description:

```swift
 case .failure(let error):
    print(error.localizedDescription)
```
Remember to fetch upcoming movies data with `fetchUpcoming()`<br/>
[viewing poster images inside CollectionViewCell.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#testing-result)
## ***Creating custom TableViewCell from the upcoming table:***
We need to create a UI Image so that it holds the poster for the title retrieved from the server.<br/>
So in [TitleTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/TitleTableViewCell.swift) under Cocoa Touch class:
```swift 
private let titlesPosterUIImageView: UIImageView = {
        let imageView =  UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
```
Where we need:
```swift 
label.translatesAutoresizingMaskIntoConstraints = false
```
```swift 
imageView.translatesAutoresizingMaskIntoConstraints = false
```
When setting up UIButton, we also need to activate this:
```swift 
button.translatesAutoresizingMaskIntoConstraints = false
```
Similar to [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), we need a method to apply constraints:
```swift
 private func applyConstraints(){
        let titlesPosterUIImageViewConstraints = [
            titlesPosterUIImageView.leadingAnchor.constraint(equalTo:
contentView.leadingAnchor),
            titlesPosterUIImageView.topAnchor.constraint(equalTo:
contentView.topAnchor, constant: 15),
            titlesPosterUIImageView.bottomAnchor.constraint(equalTo:
contentView.bottomAnchor, constant: -15),
titlesPosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
```
And to activate the layout constraints above:
```swift 
 NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
```
We also add the upcoming play title button constraints by:
```swift
 let playTitleButtonConstraints = [
            playTitleButton.trailingAnchor.constraint(equalTo:
contentView.trailingAnchor, constant: -20),
            playTitleButton.centerYAnchor.constraint(equalTo:
contentView.centerYAnchor)
```
And activate the play title button constraints with:
```swift
NSLayoutConstraint.activate(playTitleButtonConstraints)
```
[play title button added in upcoming.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#testing-result)<br/>
Also modify the sizes, the colors and other alignments of the play buttons:
```swift
let image = UIImage(systemName: "play.circle", withConfiguration:
UIImage.SymbolConfiguration(pointSize: 30))
button.setImage(image, for: .normal)
```
To prevent each poster from overflowing the container and decrease the padding slightly;
```swift 
imageView.clipsToBounds = true in titlesPosterUIImageView
```
## ***Creating Top Search TableView inside TopSearch tab:***
Start off to create a bold solidary white title of “Search”:
```swift
 override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
  navigationController?.navigationItem.largeTitleDisplayMode = .always
```
Then to create a table view for Search section before the user entering a query:<br/>
Pass data with:
```swift 
discoverTable.delegate = self
discoverTable.dataSource = self
```
Similar to `getUpcoming` and `getToprated`, we need a configured data fetching method:
```swift 
 private func fetchDiscoverMovies() {
        APICaller.shared.getDiscoverMovies{[weak self] result in
            switch result {
            case .success(let titles):
                self?.titles = titles
                DispatchQueue.main.async {
                    self?.discoverTable.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription) }}}
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        discoverTable.frame = view.bounds }
```
DispatchQueue here still to override the main thread.<br/>
## ***Creating SearchResultsViewController to display search results:***
To read the database server once the user queries completed, we need to create a new file under `Controller` named [SearchResultsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/General/SearchResultsViewController.swift). <br/>
Create an anonymous closure pattern method to hold the search results controller:<br/>
```swift 
private let searchController: UISearchController
```
Prompt searching request in the controller:
```swift 
controller.searchBar.placeholder = "Search for a movie or a tv show"
```
Since we set the controller background color as systemGreen, when entering a user query in the placeholder, the current green background will pop out instead of a search result.<br/>
Use `layout.minimumInteritemSpacing = 0` to set the minimum intermittent spacing.<br/>
## ***Querying database for individual movie:***
To make the searching functionality works, go to Search & Query For Details in the Movie Database API, copy the [url](https://api.themoviedb.org/3/search/movie?api_key={api_key}&query=Jack+Reacher) to fetch the querying searching data.<br/>
Then we need:
```swift 
guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
```
to properly format the url.<br/>
To get the search data updated itself, we need:
```swift
searchController.searchResultsUpdater = self
```
And to prevent Xcode from throwing errors, conform the protocols by adding extension:
```swift 
extension SearchViewController: UISearchResultsUpdating
```
Along with prompting a non-empty and at least count of 3 (2 characters+) user query and also to minimize the cells:
```swift 
 !query.trimmingCharacters(in: .whitespaces).isEmpty, query.trimmingCharacters(in: .whitespaces).count >= 3
```
We don’t need a `weak self` in the switch here but only success and failure.<br/>
Configure the searching query to be a working array:
```swift 
let title = titles[indexPath.row]
 cell.configure(with: title.poster_path ?? “”)
```
[Searching placeholder works.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md#testing-result)
## ***Using Youtube API:***
Go to [Google Console Cloud](https://console.cloud.google.com).<br/>
On Dashboard, click API Services & API Overview -> Credentials -> Create a new project -> create credentials -> API Key created -> Enable APIs & Services -> YouTube Data API v3 -> enable YouTube Data API v3. <br/>
In [APICaller](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Managers/APICaller.swift) in Xcode, do:
```swift
static let YoutubeAPI_KEY = API KEY
```
Search Youtube Data API-> Content Search -> Show Code(right-hand-sided bar) -> HTTP. <br/>
Copy the [YouTube Authorized API KEY](https://youtube.googleapis.com/youtube/v3/search?key=[YOUR_API_KEY]). <br/>.
In Xcode:
```swift 
static let YoutubeBaseURL = "https://youtube.googleapis.com/youtube/v3/search?"
```
Then we matched successfully to get the response from the Youtube server.<br/>
## ***Parsing YouTube API Response:***
In [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift):
```swift 
APICaller.shared.getMovie(with: "RANDOM SEARCHING CONTENTS") { result in  // }
```
Then we got the best possible matches of the RANDOM SEARCHING CONTENTS.<br/>
In APICaller, pass completion success case by accessing the 1st element of items:
```swift 
completion(.success(results.items[0]))
```
Pass completion failure case:
```swift 
completion(.failure(error))
```
## ***Handling selections of cells (Tapping on cells):***
In [CollectionViewTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift):
```swift
 APICaller.shared.getMovie(with: titleName + "Trailer " ){ result in
            switch result {
            case .success(let videoElement):
                print(videoElement.id)
            case .failure(let error):
                print(error.localizedDescription)
```
Build and run, and if we click on a specific movie poster.<br/>
i.e. Minions: The Rise of Gru 2022<br/>
Output in console simultaneously:<br/> 
`IdVideoElement(kind: "youtube#video", videoId: "6DxjJzmYsXo")`
Then we will be redirected to the movie’s official trailer.<br/>
## ***Creating TitlePreviewViewController:***
Create a new UI Controller file named [TitlePreviewViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/General/TitlePreviewViewController.swift) in General, then import WebKit with:
```swift 
private let webView: WKWebView = WKWebView()
```
to enable viewing the trailer videos in our RepliFlix UI.<br/>
Initialize the UI titles labels and return labels:
```swift 
Initialize the UI titles labels and return labels:
```
Here, we set `label.numberOfLines = 0` to assign labels to have multiple lines in Swift.<br/>
Initialize Downloads button:
```swift 
 private let downloadButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
```
Now for the controller, we need to add several subview attributes:
```swift
 view.addSubview(webView)
        view.addSubview(titleLabel)
        view.addSubview(overviewLabel)
        view.addSubview(downloadButton)
```
We also need to set up for webview constraints:
```swift 
 func configureConstraints(){
        let webViewConstraints = [
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo:
view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo:
view.trailingAnchor)
```
And activate the web view constraints above with:
```swift 
NSLayoutConstraint.activate(webViewConstraints)
```
We also need some constraints for the title labels:
```swift 
 let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo:
webView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo:
view.leadingAnchor, constant: 20),]
```
And activate it with: 
```swift 
 NSLayoutConstraint.activate(webViewConstraints)
```
we also need some constraints for the overview title labels:
```swift 
let overviewLabelVConstraints = [
            overviewLabel.topAnchor.constraint(equalTo:
titleLabel.bottomAnchor, constant: 15),
            overviewLabel.leadingAnchor.constraint(equalTo:
view.leadingAnchor, constant: 20),]
```
And activate it with:
```swift
NSLayoutConstraint.activate(overviewLabelVConstraints)
```
Create a new file named [TitlePreviewViewModel](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/ViewModels/TitlePreviewViewModel.swift) in `ViewModel`. <br/>
In [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift), navigate to push the animated Title Preview View Model with:
```swift 
navigationController?.pushViewController(TitlePreviewViewController(), animated: true)
```
With some constraints, in [TitlePreviewViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/General/TitlePreviewViewController.swift), we define:
```swift
 private let webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
```
We also need marginal constraints for the Download button:
```swift 
 let downloadButtonConsraints = [
            downloadButton.centerXAnchor.constraint(equalTo:
view.centerXAnchor),
            downloadButton.topAnchor.constraint(equalTo:
overviewLabel.bottomAnchor, constant: 25)
```
And activate it with:
```swift 
NSLayoutConstraint.activate(downloadButtonConsraints)
```
Customize the layer radius of the download button:
```swift 
button.layer.cornerRadius = 8
button.layer.masksToBounds = true
```
We need to pass YouTube embedded data to web view with the following url:
```swift
func configure(with model: TitlePreviewViewModel ){
        titleLabel.text = model.title
        overviewLabel.text = model.titleOverview
        guard let url = URL(string:
"https://www.youtube.com/embed/)\(model.youtubeView.id.videoId)")
else{return}
          webView.load(URLRequest(url: url))
```
Also we need to create a protocol:
```swift 
protocol CollectionViewTableViewCellDelegate: AnyObject{
    func collectionViewTableViewCellDidTapCell(_ cell:
CollectionViewTableViewCell, viewModel: TitlePreviewViewModel)}
```
We also need an optional weak delegate of the protocol:
```swift 
weak var delegate: CollectionViewTableViewCellDelegate?
```
Then we need an extension in [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift) to conform it:
```swift 
extension HomeViewController: CollectionViewTableViewCellDelegate {
    func collectionViewTableViewCellDidTapCell(_ cell:
CollectionViewTableViewCell, viewModel: TitlePreviewViewModel) {
        let vc = TitlePreviewViewController()
        vc.configure(with: viewModel)
        navigationController?.pushViewController(vc, animated: true)}}
```
Build and run we then have [homeview.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)
To make the posters clickable, set the delegate to controller, and modify the extension in [HomeViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/HomeViewController.swift) by placing the current contents into a weak self of dispatch queue:
```swift 
DispatchQueue.main.async { [weak self] in
            let vc = TitlePreviewViewController()
            vc.configure(with: viewModel)
            self?.navigationController?.pushViewController(vc,
animated: true)
```
Now we successfully achieve that functionality of being redirected to a certain movie’s trailer playing and downloading page when clicking on it:<br/>
I.e. Thor: Love and Thunder 2022<br/>
[Before redirecting.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
[after redirecting.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
We also need to add:
```swift
overviewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
```
to better modify the overview alignment.<br/>
[After modifying overview alignment constraint.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
## ***Refactoring TableViewHeader Hero title:***
Fetch random trending movies with this function:
```swift 
 private func configureHeroHeaderView() {
        APICaller.shared.getTrendingMovies { [weak self] result in
            switch result {
            case .success(let titles):
  
self?.randomTrendingMovie =  titles.randomElement()
            case .failure(let error):
                print(error.localizedDescription)}}}
```
Also in order to generate the random trending element in Home View, in Hero View:
```swift 
 private func configureHeroHeaderView(){
        APICaller.shared.getTrendingMovies { [weak self] result in
            switch result {
            case .success(let titles):
                let selectedTitle =  titles.randomElement()
                self?.randomTrendingMovie =  selectedTitle
                self?.headerView?.configure(with:
TitleViewModel(titleName: selectedTitle?.original_title ?? "",
posterURL: selectedTitle?.poster_path ?? ""))
            case .failure(let error):
                print(error.localizedDescription)}}
```
Now we successfully generated different random trending movies in Home View page, and each time we reopen the app, there are different trending movie being generated:<br/>
[random element generated1.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
[random element generated2.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
## ***Handling Tapping across all ViewControllers:***
In [UpcomingViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/UpcomingViewController.swift):
```swift 
 APICaller.shared.getMovie(with: titleName) {[weak self ] result in
            switch result {
            case .success(let videoElement):
                DispatchQueue.main.async {
                    let vc = TitlePreviewViewController()
                    vc.configure(with: TitlePreviewViewModel(title:
titleName, youtubeView: videoElement, titleOverview: title.overview ??
""))
                    self?.navigationController?.pushViewController(vc,
animated: true)}
            case .failure(let error):
             print(error.localizedDescription)
```
Then build and run, in the simulator, we will also be redirected to the trailer playing and downloading page of a specific movie if we click it on Upcoming, just like HomeView.<br/>
`Upcoming Done.`<br/>
In [SearchViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/SearchViewController.swift), copy and paste the same table view function.<br/>
`TopSearch Done.`<br/>
In the [SearchResultsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/General/SearchResultsViewController.swift), we need to create a new protocol:
```swift 
protocol SearchResultsViewControllerDelegate: AnyObject {
func SearchResultsViewControllerDidTapItem(_ viewModel: TitlePreviewViewModel)} 
```
And make it an accessible public weak var delegate:
```swift 
public weak var delegate: SearchResultsViewControllerDelegate?
```
Now configure to conform the searching view results in SearchViewController:<br/>
[searching bar searching results showing.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
We also want to be redirected to a downloading page when we click on the home view posters.<br/>
So in [CollectionViewTableViewCell](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Views/CollectionViewTableViewCell.swift), we need to add a downloading action:
```swift 
func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        let config = UIContextMenuConfiguration(
            identifier: nil,
            previewProvider: nil){ _ in
                let downloadAction = UIAction(title: "Download",
subtitle: nil, image: nil, identifier: nil,
                    discoverabilityTitle: nil, state: .off) { _ in
                    print("Download tapped")
                }
                return UIMenu(title: "", image: nil, identifier: nil,
options: .displayInline, children: [downloadAction])
            }
        return config }}
```
So that in Home View, when we click on any poster and hold for couple second, there will appear a download option for us to be redirected to Downloads bar for the movie:<br/>
[Long press download action.PNG](https://github.com/KrystalZhang612/RepliFlix#testing-result)<br/>
Add optional downloading path:
```swift
 private func downloadTitleAt(indexPath: IndexPath){
        print("Downloading \(titles[indexPath.row].original_title)")}}
```
## ***Core Data:***
Add core data to an existing project:<br/>
Create a new test project with Core Data selected.<br/>
Then in its [AppDelegate](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/AppDelegate.swift), copy the whole CORE DATA STACK.<br/>
Paste the whole core data stack into the class in AppDelegate within the RepliFlix project.<br/>
Add `import CoreData` at the top.<br/>
Create a new Core Data file under RepliFlix path and name it as [RepliFlixModel](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/RepliFlixModel.xcdatamodeld/ReplixFlixModel.xcdatamodel/contents).<br/>
Modify in AppDelegate: 
```swift 
let container = NSPersistentContainer(name: "RepliFlixModel")
```
Add Entity in RepliFlixModel, and rename it as `TitleItem`.<br/>
Add all the attributes from `Title` to the entity.<br/>
`NOTE`: To ensure `TitleItem` is accessible in `CollectionViewTableCell`, close Xcode and reopen it. Now the entity `TitleItem` should be fully accessible publicly.<br/>
To implement core data:<br/>
First create a new swift file under `Manager` and name it [DataPersistenceManager](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Managers/DataPersistenceManager.swift).<br/>
So this class will be responsible for downloading the core data and talking to its API.<br/>
Add an instance/reference:
```swift
guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return}
```
to the app delegate, with context:
```
let context = appDelegate.persistentContainer.viewContext
```
Create a new item to pass all `Title` attributes into the item:
```swift 
let item = TitleItem(context: context)
        item.original_title = model.original_title
        item.id = Int64(model.id)
        item.original_name = model.original_name
        item.overview = model.overview
        item.media_type = model.media_type
        item.poster_path = model.poster_path
        item.release_date = model.release_date
        item.vote_count = Int64(model.vote_count)
        item.vote_average = model.vote_average
```
Then manage to save the data with:
```swift 
 do{try context.save()} catch {print(error.localizedDescription)}
```
Pass EMPTY to completion success case: 
```swift 
completion(.success(()))
```
For the completion failure case, create a enum:
```swift 
 enum DatabasError: Error{
      case failedToSaveData }
      completion(.failure(DatabasError.failedToSaveData))
```
Now we need to fetch the data from the server database:
```swift 

   func fetchingTitleFromDataBase(completion: @escaping
(Result<[TitleItem], Error>) -> Void){
        guard let appDelegate = UIApplication.shared.delegate as?
AppDelegate else {
            return}
        let context = appDelegate.persistentContainer.viewContext
        let request: NSFetchRequest<TitleItem>
        request = TitleItem.fetchRequest()
             do {
            let titles = try context.fetch(request)
            completion(.success(titles))
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
```
Now we have our data fetching request sent and done.<br/>
Fetch local storage for download in [DownloadsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/DownloadsViewController.swift):
```swift
private func fetchLocalStorageForDownload(){
        DataPersistenceManager.shared.fetchingTitleFromDataBase {}
```
And also reload the data while fetching in:
```swift
 self?.downloadedTable.reloadData()
```
Also for the downloaded table view to show, we need to add:
```swift 
view.addSubview(downloadedTable)
```
Now we need to ask database manager to delete certain object:
```swift 
context.delete(model)
```
We also need to implement a function in [DownloadsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/Core/DownloadsViewController.swift) to delete data:
```swift 
 func tableView(_ tableView: UITableView, commit editingStyle:
UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle{
        case .delete:
           DataPersistenceManager.shared.deleteTitleWith(model:
titles[indexPath.row]) { [weak self] result in
                switch result{
                case .success():
                    print("Delete from the database")
                case .failure(let error):
                    print(error.localizedDescription)
                }
                self?.titles.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        default:
            break; }
```
So we are able to delete the already downloaded movies in the Downloads bar.<br/>
## ***Using Notification Center to update ViewControllers:***
```swift 
NotificationCenter.default.addObserver(forName: NSNotification.Name("downloaded"), object: nil, queue: nil) { _ in
            self.fetchLocalStorageForDownload()}
```
So the system will be notified when a certain movie has finished downloading.<br/>

# Debugging&Troubleshooting
- Possible error: `SD_IMAGE BAD INSTRUCTION`. DEBUGGING: Implement [SearchResultsViewController](https://github.com/KrystalZhang612/RepliFlix/blob/main/RepliFlix/Controllers/General/SearchResultsViewController.swift) to fix the error. We need to adjust the simulator to iPhone 13 Pro for the screen to better fit searching blocks.
- Noticeable error:  SD Image BAD INSTRUCTION error. DEBUGGING:  https://github.com/SDWebImage/SDWebImage/issues/3400. Failed to log metrics. 
- Error: May encounter WKWebView ViewportSizing logs in SwiftUI warning with:
  ```swift
  [ViewportSizing] maximumViewportInset cannot be larger than frame
  ``` 
  DEBUGGING: Replace `let webView = WKWebView()` with `let webView = WKWebView(frame: CGRect(x: 0.0, y: 0.0, width: 0.1, height: 0.1))`
  Reference: https://stackoverflow.com/questions/73314364/wkwebview-viewportsizing-logs-in-swiftui


# Testing Result
[viewing poster images inside CollectionViewCell.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/viewing%20poster%20images%20inside%20CollectionViewCell.png)<br/>
[play title button added in upcoming.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/play%20title%20button%20added%20in%20upcoming.png)<br/>
[Searching placeholder works.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/searching%20placeholder%20works.png)<br/>
[homeview.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/homeview.png)<br/>
[Before redirecting.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/before%20redirecting.png)<br/>
[after redirecting.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/after%20redirecting.png)<br/>
[After modifying overview alignment constraint.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/After%20modifying%20overview%20alignment%20.png)<br/>
[random element generated1.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/random%20element%20generated1.png)<br/>
[random element generated2.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/random%20element%20generated2.png)<br/>
[searching bar searching results showing.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/searching%20bar%20searching%20results%20showing.png)<br/>
[Long press download action.PNG](https://github.com/KrystalZhang612/RepliFlix/blob/main/long%20press%20download%20action.png)<br/>
Useful links for homepage icons customization:
https://www.sitepoint.com/github-profile-readme/

# Author
Krystal Zhang 
https://github.com/KrystalZhang612<hr>
*This file was generated by [RepliFlixApp-readme](https://github.com/KrystalZhang612/RepliFlix/blob/main/README.md), on September 25, 2022*



