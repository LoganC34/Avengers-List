//
//  AvengersTableViewController.swift
//  Avengers List
//
//  Created by Logan Cain on 10/31/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import UIKit

class AvengersTableViewController: UITableViewController {

    var data: [Avenger]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        data = DataSet.sampleData
        self.tableView.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "avengeCell", for: indexPath)
        
        // Configure the cell...
        
        
        if let avengeCell = cell as? AvengersTableViewCell {
            if let therealdata = data {
                let avenger = therealdata[indexPath.row]
                

                avengeCell.avengeTitleLabel?.text = avenger.alias
                if let imageName = avenger.imageName {
                    avengeCell.avengeImageView?.image = UIImage(named: imageName)
                    avengeCell.avengeImageView?.layer.cornerRadius = avengeCell.avengeImageView.frame.size.width / 2;
                    avengeCell.avengeImageView?.clipsToBounds = true;
                    
                }
                else {
                    avengeCell.avengeImageView.image = nil
                }
            }
        }
        
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
 
        if let identifier = segue.identifier {
            if identifier == "avengerSegue" {
                if let svc = segue.destination as? AvengerViewController,
                    let cell = sender as? UITableViewCell,
                    let data = data {
                    if let indexPath = tableView.indexPath(for: cell) {
                        svc.avenger = data[indexPath.row]
                    }
                }
 
            }
        }
        
        
        
    }

}
