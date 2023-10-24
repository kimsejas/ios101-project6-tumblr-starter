//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Kimberly Sejas on 10/24/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var caption: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        caption.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImage)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
