
import UIKit

class ItemTableViewController: UITableViewController {

    @IBAction func cancel(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var item1Get: UIButton!
    @IBAction func item1Get(_ sender: UIButton) {
        if (dataCenter.coin >= 1){
            if (!item1Get.isSelected){
                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[0] = false
                dataCenter.coin -= 1
                
                item1Get.isSelected = true
                item2Get.isSelected = false
                item3Get.isSelected = false
                item4Get.isSelected = false
                item5Get.isSelected = false
                item6Get.isSelected = false
                
                
            }
        }
        
    }
    
    @IBOutlet weak var item2Get: UIButton!
    @IBAction func item2Get(_ sender: UIButton) {
        if (dataCenter.coin >= 5){
            if (!item2Get.isSelected){
                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[1] = false
                dataCenter.coin -= 5
                
                item2Get.isSelected = true
                item1Get.isSelected = false
                item3Get.isSelected = false
                item4Get.isSelected = false
                item5Get.isSelected = false
                item6Get.isSelected = false
            }
        }
    }
    
    @IBOutlet weak var item3Get: UIButton!
    @IBAction func item3Get(_ sender: UIButton) {
        if (dataCenter.coin >= 1){
            if (!item3Get.isSelected){
                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[2] = false
                dataCenter.coin -= 1
                
                item3Get.isSelected = true
                item1Get.isSelected = false
                item2Get.isSelected = false
                item4Get.isSelected = false
                item5Get.isSelected = false
                item6Get.isSelected = false
                
                
            }
        }
    }
    
    @IBOutlet weak var item4Get: UIButton!
    @IBAction func item4Get(_ sender: UIButton) {
        if (dataCenter.coin >= 1){
            if (!item4Get.isSelected){
                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[3] = false
                dataCenter.coin -= 1
                
                item4Get.isSelected = true
                item1Get.isSelected = false
                item2Get.isSelected = false
                item3Get.isSelected = false
                item5Get.isSelected = false
                item6Get.isSelected = false
            }
        }
    }
    
    @IBOutlet weak var item5Get: UIButton!
    @IBAction func item5Get(_ sender: UIButton) {
        if (dataCenter.coin >= 3){
            if (!item5Get.isSelected){
                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[4] = false
                dataCenter.coin -= 3
                
                item5Get.isSelected = true
                item1Get.isSelected = false
                item2Get.isSelected = false
                item3Get.isSelected = false
                item4Get.isSelected = false
                item6Get.isSelected = false
            }
        }
    }
    
    @IBOutlet weak var item6Get: UIButton!
    @IBAction func item6Get(_ sender: UIButton) {
        if (dataCenter.coin >= 3){
            if (!item6Get.isSelected){
                dataCenter.coin -= 2

                for i in 0...5 {
                    dataCenter.item[i] = true
                }
                dataCenter.item[5] = false
                
                item6Get.isSelected = true
                item1Get.isSelected = false
                item2Get.isSelected = false
                item3Get.isSelected = false
                item4Get.isSelected = false
                item5Get.isSelected = false
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        
            if (!dataCenter.item[0]){
                item1Get.isSelected = true
            } else {
                item1Get.isSelected = false
            }
            if (!dataCenter.item[1]){
                item2Get.isSelected = true
            } else {
                item2Get.isSelected = false
            }
            if (!dataCenter.item[2]){
                item3Get.isSelected = true
            } else {
                item3Get.isSelected = false
            }
            if (!dataCenter.item[3]){
                item4Get.isSelected = true
            } else {
                item4Get.isSelected = false
            }
            if (!dataCenter.item[4]){
                item5Get.isSelected = true
            } else {
                item5Get.isSelected = false
            }
            if (!dataCenter.item[5]){
                item6Get.isSelected = true
            } else {
                item6Get.isSelected = false
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
