//
//  ViewController.swift
//  CustomTableView
//
//  Created by Md Maruf Prodhan on 14/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table : UITableView!
    
    struct Animal {
        let title : String
        let imageName : String
    }
    
    let data : [Animal] = [
        Animal(title: "Deer", imageName: "deer"),
        Animal(title: "Deer", imageName: "deer"),
        Animal(title: "Deer", imageName: "deer"),
        Animal(title: "Deer", imageName: "deer"),
        Animal(title: "Deer", imageName: "deer"),
        Animal(title: "Deer", imageName: "deer")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
     //   table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal  = data[indexPath.row]
        let cell  = table.dequeueReusableCell(withIdentifier: "cell", for :indexPath) as!CustomTableViewCell
        cell.label.text =  animal.title
        cell.animalImage.image = UIImage(named: animal.imageName)
        return cell
    }

}

