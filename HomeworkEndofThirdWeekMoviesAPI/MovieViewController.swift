//
//  MovieViewController.swift
//  HomeworkEndofThirdWeekMoviesAPI
//
//  Created by Forrest Filler on 6/25/16.
//  Copyright © 2016 ffdevappsff. All rights reserved.
//

import UIKit
import Alamofire

class MovieViewController: UIViewController {
    
    var movie: Movie!
    

    override func loadView() {
        print("loadView: ")
        let frame = UIScreen.mainScreen().bounds
        let view = UIView(frame: frame)
        view.backgroundColor = .redColor()
        
        self.view = view
        
        
        
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
