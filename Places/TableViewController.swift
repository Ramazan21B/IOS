//
//  TableViewController.swift
//  Places
//
//  Created by Aitzhan Ramazan on 28.06.2024.
//

import UIKit

class TableViewController: UITableViewController {
    var arrayPLaces = [Places(name: "Gramercy Tavern", description: "Gramercy Tavern — ресторан новой американской кухни, расположенный по адресу 42 East 20th Street, в районе Флэтайрон на Манхэттене, Нью-Йорк. Он принадлежит Дэнни Мейеру вместе с шеф-поваром / партнером Майклом Энтони. Шеф-кондитер Миро Ускокович. Генеральный директор - Уильям ", image: "GT", latitude: 40.757046, longitude: -73.986732 )]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPLaces.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        
        let name = cell.viewWithTag(1001) as! UILabel
        name.text = arrayPLaces[indexPath.row].name
        
        let description = cell.viewWithTag(1002) as! UILabel
        description.text = arrayPLaces[indexPath.row].description
        
        let images = cell.viewWithTag(1003) as! UIImageView
        images.image = UIImage(named: arrayPLaces[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        detail.places = arrayPLaces[indexPath.row]
        
        navigationController?.show(detail, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
