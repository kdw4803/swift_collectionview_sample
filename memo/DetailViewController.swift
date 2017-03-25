//
//  DetailViewController.swift
//  memo
//
//  Created by Brad on 25/03/2017.
//  Copyright © 2017 brad. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController,NSFetchedResultsControllerDelegate {

    var article:Article?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = article?.title
        contentLabel.text = article?.content
        imageView.image = UIImage(data: (article?.image! as? NSData!)! as Data)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
