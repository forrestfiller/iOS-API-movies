//
//  ViewController.swift
//  HomeworkEndofThirdWeekMoviesAPI
//
//  Created by Forrest Filler on 6/25/16.
//  Copyright © 2016 ffdevappsff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var moviesTable: UITableView!
    var movieList = Array<Movie>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20 // self.movieList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let movie = self.movieList[indexPath.row]
        
        let cellId = "cellId"
        
        if let cell = tableView.dequeueReusableCellWithIdentifier(cellId) {
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.vote_average
        cell.imageView?.image = UIImage(named: movie.image!)//i'm concerned about this bang: but xcode complains
        print("cellForRowAtPath: ")
        return cell
        }
        
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: cellId)
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.vote_average
        cell.imageView?.image = UIImage(named: movie.image!)//i'm concerned about this bang: but xcode complains
        print(".Subtitle reuseIdentifier")
        return cell
        
        
    }














}

