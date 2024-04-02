//
//  TableViewController.swift
//  news
//
//  Created by Aitzhan Ramazan on 24.03.2024.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayNews = [News(title: "News1", image: "weather", description: "iuiuhiu"),
                     News(title: "News2", image: "photo_467 1", description: "hbuhbub"),
                     News(title: "News3", image: "photo_467", description: "uhbvvuyvbu")
    ]
    
    var arrayTime = [
    "Time1",
    "Time2",
    "Time3"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNews.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let titleLabel = cell.viewWithTag(1000) as! UILabel
        titleLabel.text = arrayNews[indexPath.row].title
        
        let newsImage = cell.viewWithTag(1002) as! UIImageView
        newsImage.image = UIImage(named: arrayNews[indexPath.row].image)
        
        let labelTime = cell.viewWithTag(300) as! UILabel
        labelTime.text = arrayTime[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    @objc func countTime() {
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let currentTime = dateFormatter.string(from: date)
        
        arrayNews.insert(arrayNews[2], at: 0)
        arrayTime.insert(currentTime, at: 0)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVc.news = arrayNews[indexPath.row]
        navigationController?.show(detailVc, sender: self)
        
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
