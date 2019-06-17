
import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    @IBAction func cancel(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
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
    
    override func viewWillAppear(_ animated: Bool) {

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCenter.history.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceCell", for: indexPath)
        
        let branch = dataCenter.history[indexPath.row]
        cell.textLabel?.text = String(branch.seconds) + ", " + branch.category + ", " + branch.title + ", " + dateFormatter.string(from: branch.date as Date) + ", " + String(branch.success)
        // Configure the cell...
        */
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceCell", for: indexPath) as! MyProtoTableViewCell
        let count = dataCenter.history.count
        let branch = dataCenter.history[count - 1 - indexPath.row]
        
        cell.title.text = branch.title
        cell.date.text = dateFormatter.string(from: branch.date)
        cell.attain.text = String(branch.attain) + " %"
        cell.time.text = "목표시간 " + String(branch.time) + " minutes"
        cell.study_time.text = "공부시간 " + String(branch.study_time) + " minutes"
        switch branch.weekday {
        case 1:
            cell.weekday.text = String("일요일")
        case 2:
            cell.weekday.text = String("월요일")
        case 3:
            cell.weekday.text = String("화요일")
        case 4:
            cell.weekday.text = String("수요일")
        case 5:
            cell.weekday.text = String("목요일")
        case 6:
            cell.weekday.text = String("금요일")
        case 7:
            cell.weekday.text = String("토요일")
        default:
            cell.weekday.text = String("weekday error")
        }
        
        if branch.success {
            cell.success.text = "Success"}
        else {
            cell.success.text = "Fail"
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let strForSectionHeader = String(dataCenter.results["success"]!) + " success, " + String(dataCenter.results["fail"]!) + " failure"
        
        
        return strForSectionHeader
    }
    
    
 /*
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let strForSectionHeader = String(dataCenter.results["success"]!) + " success, " + String(dataCenter.results["fail"]!) + " failure"
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.text = strForSectionHeader
        
    }
  */
    
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
