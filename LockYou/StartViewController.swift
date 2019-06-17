

import UIKit


class StartViewController: UIViewController {

    
    @IBAction func vol(_ sender: UIButton) {
        if sender.isSelected {
            sender.setTitle("🔇", for: .normal)
            sender.isSelected = false
            dataCenter.sound = false
        } else {
            sender.setTitle("🔈", for: .normal)
            sender.isSelected = true
            dataCenter.sound = true
        }
    }
    
    
    @IBOutlet weak var timerTitle: UITextField!
    
    @IBOutlet weak var categorySegment: UISegmentedControl!
    
    @IBOutlet weak var item1: UIImageView!
    
    @IBOutlet weak var currentcoin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {

        currentcoin.text = String(dataCenter.coin) + " Coin "
        if (!dataCenter.item[0]){
            item1.image = #imageLiteral(resourceName: "time0")
        }
        if (!dataCenter.item[1]){
            item1.image = #imageLiteral(resourceName: "water2")
        }
        if (!dataCenter.item[2]){
            item1.image = #imageLiteral(resourceName: "light1")
        }
        if (!dataCenter.item[3]){
            item1.image = #imageLiteral(resourceName: "ant1")
        }
        if (!dataCenter.item[4]){
            item1.image = #imageLiteral(resourceName: "butterfly2")
        }
        if (!dataCenter.item[5]){
            item1.image = #imageLiteral(resourceName: "worm2")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var timeInput: UIDatePicker!
    
    @IBAction func startButton(_ sender: AnyObject) {

        
        let thisHistory : historyClass = historyClass()
        
        
        if (timerTitle.text != ""){
            thisHistory.title = timerTitle.text!
        } else { thisHistory.title = "No Title"}
        
        
        thisHistory.time = Int(timeInput.countDownDuration/60)//
        //thisHistory.category = dataCenter.category[self.categorySegment.selectedSegmentIndex]
        
        
        dataCenter.history += [thisHistory]
        
        
    
        
        timerData.minutes = Int(timeInput.countDownDuration/60)*60
        timerData.totalmin = Int(timeInput.countDownDuration)

        dataCenter.count += 1

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    

    
    
}

