

import Foundation

//테이블 뷰에 쓰이는 데이터 입니다.

let dataCenter : dataClass = dataClass()
let dateFormatter = DateFormatter()
//let fileName = "BranchData.brch"

class dataClass{
//    var filePath : String  { get{
//        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
//        return documentDirectory + fileName
//        }}
    
    var count:Int = 0
    var history : [historyClass]
    var coin:Int = 30
    //var category = ["Default", "Health", "Study", "Me", "Friend"]
    var item:[Bool] = [false, true, true, true, true, true]
    var musicselect:[Bool] = [true,false,false,false,false,false]
    var music:[String] = ["music1","music2","music3","music4","music5","music6"]
    var sound:Bool = true
    
    init() {
        dateFormatter.dateFormat = "yyyy년 M월 d일"
        history = [historyClass()]

//        if (FileManager.default.fileExists(atPath: self.filePath)){
//            if let unarchArray = NSKeyedUnarchiver.unarchiveObject(withFile: self.filePath) as? [historyClass] {
//                history += unarchArray
//            }
//        }else{
//            history = [historyClass()]
//        }
    }
    
    
    var results:Dictionary<String,Int> = ["success":0, "fail":0]
    
//    func save(){
//        NSKeyedArchiver.archiveRootObject(self.history, toFile: self.filePath)
//    }
}


class historyClass{
    var time : Int          // 목표시간, 단위-분
    var study_time : Int    // 실제 공부 시간, 단위-분
    var title : String
    var success : Bool
    var date = Date()
    var attain : String
    var weekday : Int       // weekday : 일요일부터 1~7
    
    init(){
        time = 0
        study_time = 0
        title = "Sample"
        success = false
        date = Date()
        attain = "Non"
        weekday = Calendar.current.component(.weekday, from: self.date)
        print(weekday)
    }
//    required init?(coder aDecoder: NSCoder) {
//        self.seconds = aDecoder.decodeObject(forKey: "seconds") as! Int
//        self.title = aDecoder.decodeObject(forKey: "title") as! String
//        self.success = aDecoder.decodeObject(forKey: "success") as! Bool
//        self.date = aDecoder.decodeObject(forKey: "date") as! NSDate
//        self.category = aDecoder.decodeObject(forKey: "category") as! String
//    }
//    func encode(with aCoder: NSCoder) {
//        aCoder.encodeConditionalObject(self.seconds, forKey: "seconds")
//        aCoder.encodeConditionalObject(self.title, forKey: "title")
//        aCoder.encodeConditionalObject(self.success, forKey: "success")
//        aCoder.encodeConditionalObject(self.date, forKey: "date")
//        aCoder.encodeConditionalObject(self.category, forKey: "category")
//    }
}

//StartVewConroller, DoingViewController에 쓰이는 데이터입니다.

let timerData : timerClass = timerClass()

class timerClass {
    var timerIsOn = false
    var timer = Timer()
    var black = 0
    var minutes = 0
    var totalmin = 0
    var appOutTogle = true
    
}
