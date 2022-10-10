//
//  ViewController.swift
//  BasicRealmTableView
//
//  Created by Steve Smith on 2022-10-10.
//

import UIKit
import RealmSwift
class ViewController: UIViewController, UITableViewDelegate {
    let realm = try! Realm()
    
    @IBOutlet weak var tableViewC: UITableView!
    
    
    var carsDB: Results<CarsDB>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadlogs()
        
        tableViewC.delegate = self   //  need UITableViewDelegate
        
                tableViewC.dataSource = self
//                tableViewC.separatorStyle = .none
//        tableViewC.register(UINib(nibName: "MessageCellYY", bundle: nil), forCellReuseIdentifier: "Reusedent")
        
    }

    
    //MARK: Data manipulation
    
    func loadlogs(){
        carsDB = realm.objects(CarsDB.self)
        tableViewC.reloadData()
    }

}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("At 309")
        return carsDB?.count ?? 1
            }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let message = messages[indexPath.row]
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseCellYY", for: indexPath)
//        as! MessageCellYY
        
        let cell = tableViewC.dequeueReusableCell(withIdentifier: "Reusedent", for: indexPath)
//        cell.textlabel?.text = "This is a cell"
        cell.textLabel?.text = "This is a cell"
        print("At 319")
        
        
//        cell.delegate = self

        
        return cell
    }
    
}
