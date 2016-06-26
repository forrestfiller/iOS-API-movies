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
    var summaryLabel: UILabel!
    
    override func loadView() {
        print("loadView: ")
        let frame = UIScreen.mainScreen().bounds
        let view = UIView(frame: frame)
        view.backgroundColor = .redColor()

        self.summaryLabel = UILabel(frame: CGRect(x: 20, y: 20, width: frame.size.width-40, height: 22))
        summaryLabel.backgroundColor = .blueColor()
        summaryLabel.numberOfLines = 0
        summaryLabel.lineBreakMode = .ByWordWrapping
        view.addSubview(self.summaryLabel)
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MOVIE: \(self.movie.title)")
        
        let url = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=98b525225a2fe71d855108eca4fdf12d/" + movie.id
        //put a '/' at end of link
        
        Alamofire.request(.GET, url, parameters: nil).responseJSON { response in
            
            if let json = response.result.value as? Dictionary<String, AnyObject>{
                print("\(json)")
                
                if let movieInfo = json["movie"] as? Dictionary<String, AnyObject>{
                    print("\(movieInfo)")
                    
                    if let description = movieInfo["description"] as? String {
                        print("\(description)")
                        
                        self.movie.overview = description
                        print("\(self.movie.overview)")
                        self.summaryLabel.text = self.movie.overview
                        
                        var frame =  self.summaryLabel.frame
                        let str = NSString(string: description) //objc to swift conversion w/ NNString
                        
                        let bounds = str.boundingRectWithSize(
                            CGSizeMake(frame.size.width, 1200),
                            options: .UsesLineFragmentOrigin,
                            attributes:  [NSFontAttributeName:self.summaryLabel.font!],
                            context: nil)
                        
                        frame.size.height = bounds.size.height
                        self.summaryLabel.frame = frame
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
