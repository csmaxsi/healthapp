

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: DetailsViewController())
        let vc3 = UINavigationController(rootViewController: SheduleViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "dumbbell")
        vc3.tabBarItem.image = UIImage(systemName: "timer")
        vc4.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        
        vc1.title = "Home"
        vc2.title = "Workout Details"
        vc3.title = "Shedule"
        vc4.title = "Profile"
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}

