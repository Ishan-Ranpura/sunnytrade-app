//
//  FirstViewController.swift
//  SunnyProject
//
//  Created by Owner on 4/8/17.
//  Copyright © 2017 Owner. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var name4: UILabel!
    @IBOutlet weak var name5: UILabel!
    @IBOutlet weak var name6: UILabel!
    @IBOutlet weak var name7: UILabel!
   
    @IBOutlet weak var advise: UILabel!
    
    @IBOutlet weak var bull1: UILabel!
    @IBOutlet weak var bull2: UILabel!
    @IBOutlet weak var bull3: UILabel!
    @IBOutlet weak var bull4: UILabel!
    @IBOutlet weak var bull5: UILabel!
    
    @IBOutlet weak var grade: UILabel!
    @IBOutlet weak var bear1: UILabel!
    @IBOutlet weak var bear2: UILabel!
   
    
    
    @IBOutlet weak var value1: UILabel!
    @IBOutlet weak var value2: UILabel!
    @IBOutlet weak var value3: UILabel!
    @IBOutlet weak var value4: UILabel!
    @IBOutlet weak var value5: UILabel!
    
    @IBOutlet weak var value6: UILabel!
    @IBOutlet weak var value7: UILabel!
   
   
    @IBOutlet weak var appleLabel: UILabel!
    @IBOutlet weak var googleLabel: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
   
    @IBOutlet weak var labelToHide1: UILabel!
    
    @IBOutlet weak var labelToHide2: UILabel!
    @IBOutlet weak var labelSlider: UILabel!
 
   
    @IBAction func tradeButton(_ sender: Any) {
        
        
        var url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=GEVO")
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
            
            if error != nil {
                print(error)
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                print("Printing json")
                print(json)
                let nameobj = json["name"] as! String
                let bullobj = json["bullish"] as! Int
                let priceobj = json["price"] as! String
                let bearobj = json["bearish"] as! Int
                print("printing nameobj")
                print(nameobj)
                print(bullobj)
                print(bearobj)
                print(priceobj)
                
                
                self.name1.text = nameobj
                self.value1.text = priceobj
                self.appleLabel.frame = CGRect.init(x: 259 , y: 275, width: bullobj, height: 21)
                self.appleLabel.backgroundColor = UIColor.green
                let bullish = String(bullobj)
                self.bull1.text = bullish + "% Bullish"
                
                
            } catch let jsonError{
                print(jsonError)
            }
            
            
        }).resume()
        
        url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=RTN")
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
            
            if error != nil {
                print(error)
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                print("Printing json")
                print(json)
                let nameobj = json["name"] as! String
                let bullobj = json["bullish"] as! Int
                let priceobj = json["price"] as! String
                let bearobj = json["bearish"] as! Int
                print("printing nameobj")
                print(nameobj)
                print(bullobj)
                print(bearobj)
                print(priceobj)
                
                self.name4.text = nameobj
                self.value4.text = priceobj
                self.label4.frame = CGRect.init(x: 259 , y: 391, width: bullobj, height: 21)
                
                let bearish = String(bearobj)
                self.bear1.text = bearish + "% Bearish"
                
            } catch let jsonError{
                print(jsonError)
            }
            
            
        }).resume()
        
        url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=MU")
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
            
            if error != nil {
                print(error)
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                print("Printing json")
                print(json)
                let nameobj = json["name"] as! String
                let bullobj = json["bullish"] as! Int
                let priceobj = json["price"] as! String
                let bearobj = json["bearish"] as! Int
                print("printing nameobj")
                print(nameobj)
                print(bullobj)
                print(bearobj)
                print(priceobj)
                
                self.name5.text = nameobj
                self.value5.text = priceobj
                self.label5.frame = CGRect.init(x: 259 , y: 416, width: bullobj, height: 21)
                
                let bearish = String(bearobj)
                self.bear1.text = bearish + "% Bearish"
                
            } catch let jsonError{
                print(jsonError)
            }
            
            
        }).resume()
        

        
        
        
        name7.isHidden = true
        value7.isHidden = true
        bear2.isHidden = true
        name6.isHidden = true
        value6.isHidden = true
        bear1.isHidden = true
        label6.isHidden = true
        label7.isHidden = true
        labelToHide1.isHidden = true
        labelToHide2.isHidden = true
        
        
        
        
    }
    @IBOutlet weak var colorSlider: UILabel!
    @IBAction func sliderValue(_ sender: UISlider) {
        
        labelSlider.text = "$" + String(Int(sender.value)) + " out of $11325 invested"
        let colorProgress = Int((sender.value)/33)
        self.colorSlider.frame = CGRect.init(x: 16 , y: 80, width: colorProgress, height: 21)
        
        if (Int(sender.value) >= 1800 && Int(sender.value) <= 3599)
        {   print("Inside 1800 color progress")
            grade.text = "B"
            advise.text = "You are in the sweet spot for investments. Remember to take care of your emergency fund, and check back to see your growth over time."
            colorSlider.backgroundColor = UIColor.green
        }
        
         else if (Int(sender.value) >= 3600 && Int(sender.value) <= 4399 )
        {   print("Inside 3600 color progress")
            grade.text = "B+"
            colorSlider.backgroundColor = UIColor.yellow
        }
        
         else if (Int(sender.value) >= 4400)
        {   print("Inside 4400 color progress")
            print("printing slider value")
            advise.text = "Don't invest too much money. It can take time to turn stocks back into cash so you should keep some of it in a readily available form"
            grade.text = "D"
            print(Int(sender.value))
            colorSlider.backgroundColor = UIColor.red
        }
        
        else if (Int(sender.value) >= 0 )
        {   print("Inside 0 color progress")
            grade.text = "C"
            colorSlider.backgroundColor = UIColor.yellow
        }
        
        if (Int(sender.value) >= 4800 )
        {
            grade.text = "F"
        }
        
        if(Int(sender.value) >= 2400 && Int(sender.value) <= 2600)
        {
            grade.text = "A"
        }
        
    }
    
     
    func buy(){
        
        
//        {
//            "bullish": 74,
//            "name": "Apple Inc. ",
//            "bearish": 26,
//            "price": "143.43"
//        }
        
        
        
        for i in 0..<10{
            if (i==0)
            {
        let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=WRN")
       
        URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
            
            if error != nil {
                print(error)
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                print("Printing json")
                print(json)
                let nameobj = json["name"] as! String
                let bullobj = json["bullish"] as! Int
                let priceobj = json["price"] as! String
                let bearobj = json["bearish"] as! Int
                print("printing nameobj")
                print(nameobj)
                print(bullobj)
                print(bearobj)
                print(priceobj)
                
                
                self.name1.text = nameobj
                self.value1.text = priceobj
              self.appleLabel.frame = CGRect.init(x: 259 , y: 275, width: 87, height: 21)
                
                let bullish = String(bullobj)
                self.bull1.text = "87% Bullish"
                
                
            } catch let jsonError{
                print(jsonError)
            }
            
            
        }).resume()
            }
            else  if (i==1)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=AMD")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        self.name2.text = nameobj
                        self.value2.text = priceobj
                        self.googleLabel.frame = CGRect.init(x: 259 , y: 334, width: bullobj, height: 21)
                        
                        let bullish = String(bullobj)
                        self.bull2.text = bullish + "% Bullish"
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            else  if (i==2)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=CHK")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        self.name3.text = nameobj
                        self.value3.text = priceobj
                        self.label3.frame = CGRect.init(x: 259 , y: 362, width: bullobj, height: 21)
                        
                        let bullish = String(bullobj)
                        self.bull3.text = bullish + "% Bullish"
                        
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            else  if (i==3)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=GEVO")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        
                        self.name4.text = nameobj
                        self.value4.text = priceobj
                        self.label4.frame = CGRect.init(x: 259 , y: 391, width: bullobj, height: 21)
                        
                        let bullish = String(bullobj)
                        self.bull4.text = bullish + "% Bullish"
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            else  if (i==4)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=RTN")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        
                        self.name5.text = nameobj
                        self.value5.text = priceobj
                        self.label5.frame = CGRect.init(x: 259 , y: 416, width: bullobj, height: 21)
                        
                        let bullish = String(bullobj)
                        self.bull5.text = bullish + "% Bullish"
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            
            else  if (i==5)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=MU")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        
                        self.name6.text = nameobj
                        self.value6.text = priceobj
                        self.label6.frame = CGRect.init(x: 259 , y: 445, width: bullobj, height: 21)
                        
                        let bearish = String(bearobj)
                        self.bear1.text = bearish + "% Bullish"
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            
            else  if (i==6)
            {
                let url = URL(string: "http://soncojmk.pythonanywhere.com/sunnytrade/score/?stock=WRN")
                
                URLSession.shared.dataTask(with: url!, completionHandler: { (data,response,error) in
                    
                    if error != nil {
                        print(error)
                        return
                    }
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                        print("Printing json")
                        print(json)
                        let nameobj = json["name"] as! String
                        let bullobj = json["bullish"] as! Int
                        let priceobj = json["price"] as! String
                        let bearobj = json["bearish"] as! Int
                        print("printing nameobj")
                        print(nameobj)
                        print(bullobj)
                        print(bearobj)
                        print(priceobj)
                        
                        self.name7.text = nameobj
                        self.value7.text = priceobj
                        self.label7.frame = CGRect.init(x: 259 , y: 507, width: 87, height: 21)
                        
                        let bearish = String(bearobj)
                        self.bear2.text = "87% Bearish"
                        
                    } catch let jsonError{
                        print(jsonError)
                    }
                    
                    
                }).resume()
            }
            
            
            
         
            
            
        }
        
        
    }
    
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
       let account = UserDefaults.standard.string(forKey: "Username")
        buy()
        
        // let usernameStored = UserDefaults.standard.string(forKey: "username");
        
        
        
    }

   

}

