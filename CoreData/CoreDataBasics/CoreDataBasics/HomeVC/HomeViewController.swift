//
//  ViewController.swift
//  CoreDataBasics
//
//  Created by Santosh Chaurasia on 1/9/20.
//  Copyright © 2020 Santosh Chaurasia. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    
    var nsmanagedObjectContext : NSManagedObjectContext?
    var classes : [NSManagedObject]?
   // var classes : [Classes]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let appdelegate =  UIApplication.shared.delegate as? AppDelegate {
            nsmanagedObjectContext = appdelegate.persistentContainer.viewContext
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadData()
        
    }

    func reloadData()
    {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Classes")
        
        do {
            if let results = try nsmanagedObjectContext?.fetch(fetchRequest) as? [NSManagedObject] {
                classes = results
            }
        } catch {
            print("error in fetching results")
        }
    }

}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        classes?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell

        let classObj = classes?[indexPath.row]
        
        //cell.className.text = classObj.standard
        //cell.classCount.text = classObj.totalCount
        if let classname = classObj?.value(forKey : "standard") as? String, let classcount = classObj?.value(forKey: "totalCount") as? String {
            cell?.className.text = classname
            cell?.classCount.text = classcount
        }
        return cell!
         
    }
    
    
}

